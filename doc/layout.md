# Figma Layout

I’ll use these axis terms:

* **Primary axis** = horizontal if `layoutMode == HORIZONTAL`, vertical if `layoutMode == VERTICAL`.
* **Counter axis** = the other one.

I’ll write `P` for primary axis and `C` for counter axis, and refer to container padding/spacing as:

* `padStartP`, `padEndP` = (`paddingLeft`,`paddingRight`) if horizontal, otherwise (`paddingTop`,`paddingBottom`).
* `padStartC`, `padEndC` = the other pair.
* `gapP = itemSpacing` (between items in a line/column).
* `gapC = counterAxisSpacing` (between wrapped lines).

Where I say “intrinsic size” of a child, it means: if that child is a non-auto-layout leaf, use its given `width`/`height`; if it’s an auto-layout container, you must compute its size first by recursively running this same algorithm.

---

# 1) Common prelude

```text
frameX = x
frameY = y
frameW = width
frameH = height
transform = relativeTransform // 2x3 affine, applied after layout positions
children = this.children
```

* All positions you compute are **local to the container’s unrotated local space**. Apply `relativeTransform` (if any) when producing world coordinates.
* For Auto Layout containers, children are **not** resized by constraints; they’re placed by Auto Layout. Constraints only apply to absolutely-positioned children (layoutMode = NONE) and when a parent’s own frame size changes outside of auto layout.

---

# 2) If `layoutMode == NONE` (absolute/“free” layout)

Children are positioned by their own `x`, `y` (in this container’s local space), then transformed by their child `relativeTransform` (if any). The container’s `width`/`height` are authoritative and **do not** derive from children (HUG does not apply because there is no auto layout).

If you support Figma-style constraints:

1. Let the container’s previous size be `(W0, H0)` and current size be `(W1, H1)`.
2. For each child, read its `constraints`:

   * Horizontal: one of {LEFT, RIGHT, LEFT_RIGHT (scale), CENTER, SCALE}.
   * Vertical: one of {TOP, BOTTOM, TOP_BOTTOM (scale), CENTER, SCALE}.
3. Compute new child `(x’, y’, w’, h’)` by the standard rules:

   * **Pinned single side (e.g., LEFT)**: keep distance to that side; keep size unless opposite pinning demands scaling.
   * **Pinned both sides (LEFT_RIGHT / TOP_BOTTOM)**: stretch child size by the delta of the container along that axis; keep distances to both sides.
   * **CENTER**: keep center offset proportional (or absolute, depending on your choice); size remains constant.
   * **SCALE**: scale position and size by the ratio `W1/W0` or `H1/H0`.

Finally, place each child at `(child.x’, child.y’)`, size `(child.w’, child.h’)`, then apply the child’s `relativeTransform`.

That’s it for `NONE`.

---

# 3) If `layoutMode ∈ {HORIZONTAL, VERTICAL}` (Auto Layout)

## 3.1 Gather child “preferred” sizes

For each child `i`:

* Recursively compute its size if it’s an auto-layout container, else use its declared `width`/`height` (or text intrinsic if relevant in your engine).
* Record:

  * `sizeP[i]` = size along primary axis
  * `sizeC[i]` = size along counter axis

*(If you support per-child alignment/sizing overrides like “Fill container” vs “Hug contents”: integrate here. With only the fields you listed, we treat child sizes as fixed results of their own layout.)*

## 3.2 Wrapping vs single line

Let:

* `innerFixedP` = if the **container** `primaryAxisSizingMode == FIXED`:
  `frameInnerP = (frameW - padLeft - padRight)` for horizontal, or `(frameH - padTop - padBottom)` for vertical.
  Otherwise `null` (we’ll compute HUG size).
* `lineCapacityP` = `innerFixedP` if fixed, else `+∞` (no need to wrap until we know HUG size; practically you’ll place all in one line first, then compute).

**Build lines**:

```pseudocode
lines = [] // each line has items[], sumP, maxC
currentLine = new Line()
for i in children:
  itemP = sizeP[i]
  needed = (currentLine.items.isEmpty ? 0 : gapP) + itemP
  if layoutWrap == WRAP and currentLine.sumP + needed > lineCapacityP:
       // finalize current line
       lines.add(currentLine)
       currentLine = new Line()
       needed = itemP // no leading gap on new line
  currentLine.items.add(i)
  currentLine.sumP += needed
  currentLine.maxC = max(currentLine.maxC, sizeC[i])
end
if currentLine.items not empty: lines.add(currentLine)
```

Notes:

* In HUG+WRAP with no fixed inner size, Figma still wraps only if you set an explicit width; otherwise it won’t wrap because there’s no boundary. With just these inputs, wrap can meaningfully apply only when the container has a **fixed primary dimension**.

## 3.3 Compute container inner size (HUG vs FIXED)

Primary axis:

* If `primaryAxisSizingMode == FIXED`: `innerP = innerFixedP`.
* Else (`HUG`):

  * If `WRAP`: `innerP = max(lines[k].sumP)` across lines.
  * Else: `innerP = sum(sizeP[i]) + gapP * (nChildren - 1)` (or 0 if no children).

Counter axis:

* If `counterAxisSizingMode == FIXED`: `innerC = (frameH - pads)` or `(frameW - pads)` accordingly.
* Else (`HUG`):

  * `innerC = sum( lines[k].maxC ) + gapC * (numLines - 1)`.

Finally set container’s **frame size** from `innerP/innerC`:

```pseudocode
if layoutMode == HORIZONTAL:
  frameW = innerP + paddingLeft + paddingRight
  frameH = innerC + paddingTop + paddingBottom
else: // VERTICAL
  frameW = innerC + paddingLeft + paddingRight
  frameH = innerP + paddingTop + paddingBottom
```

*(If your engine treats the given `width`/`height` as authoritative when mode=Auto Layout and sizing=FIXED, keep them and use them to compute `innerP/innerC`. For HUG, overwrite frame size as above.)*

## 3.4 Compute line/block positions in counter axis

Let:

```pseudocode
originX = paddingLeft
originY = paddingTop
```

Define `offsetCStart` based on `counterAxisAlignItems`:

* If `MIN` (a.k.a. start): `linesStartC = 0`
* If `CENTER`: `linesStartC = (innerC - totalLinesC) / 2`
* If `MAX` (end): `linesStartC = innerC - totalLinesC`

Here:

```pseudocode
totalLinesC = sum(lines[k].maxC) + gapC * (numLines - 1)
```

Place each line’s top/left (in the counter axis):

```pseudocode
cursorC = linesStartC
for each line in lines:
  line.offsetC = cursorC
  cursorC += line.maxC + gapC
```

*(In Figma, counter-axis “Space between” is not available; if you support it, distribute `gapC` accordingly.)*

## 3.5 Place items within each line (primary axis alignment)

Within a single line:

* Compute `usedP = sum(sizeP[i]) + gapP * (itemsCount - 1)`
* Compute `freeP = innerP - usedP`

Now apply `primaryAxisAlignItems`:

* **MIN**: start at `offsetP = 0`
* **CENTER**: `offsetP = freeP / 2`
* **MAX**: `offsetP = freeP`
* **SPACE_BETWEEN**:

  * If `itemsCount <= 1`: treat as MIN (no extra gaps).
  * Else: set `gapLine = freeP / (itemsCount - 1)` and ignore `gapP` for this line.

Then position items:

```pseudocode
cursorP = offsetP
for each item i in line.items:
  posP[i] = cursorP
  cursorP += sizeP[i] + (align == SPACE_BETWEEN ? gapLine : gapP)
```

## 3.6 Counter-axis alignment per item

For each item `i` in the line:

* Let `lineCross = line.maxC`.
* Compute offset (inside the line’s strip) by `counterAxisAlignItems`:

  * **MIN**: `posC[i] = 0`
  * **CENTER**: `posC[i] = (lineCross - sizeC[i]) / 2`
  * **MAX**: `posC[i] = lineCross - sizeC[i]`
  * **STRETCH** (if you choose to support and the item can stretch): set `sizeC[i] = lineCross` and `posC[i] = 0`.

*(Classic Figma allows per-child “Fill container” on the counter axis; since your struct doesn’t include per-child overrides, treat all items uniformly per the container’s `counterAxisAlignItems`.)*

## 3.7 Convert (posP, posC) to (x, y) in container space

For **HORIZONTAL**:

```pseudocode
child.xLocal = originX + posP[i]
child.yLocal = originY + line.offsetC + posC[i]
```

For **VERTICAL** (swap roles):

```pseudocode
child.xLocal = originX + line.offsetC + posC[i]
child.yLocal = originY + posP[i]
```

Then apply the **child’s** `relativeTransform` to `(child.xLocal, child.yLocal)` for world placement if you keep a world transform chain.

---

# 4) Edge details & tie-breakers

* **No children**:

  * HUG along an axis → inner size = 0 on that axis; frame size reduces to just padding on that axis.
* **Rounding**:

  * If you need pixel-perfect placement, defer rounding until paint, or round cumulatively to minimize drift. Figma typically distributes rounding errors to avoid visible drift.
* **Item spacing with SPACE_BETWEEN**:

  * Per line, ignore `itemSpacing` and recompute equal gaps; on a single item line, no gap is added.
* **Wrapping & fixed‐primary**:

  * Wrap only makes sense when the container has a fixed primary inner size. If primary is HUG and you haven’t been given a maximum, do not wrap (everything sits on one line/column).
* **Counter-axis total with wrapping**:

  * HUG cross size = sum of each line’s cross size + `(numLines - 1) * counterAxisSpacing`.
* **Transforms**:

  * A container’s own `relativeTransform` moves/rotates the **whole auto-layout block**. Each child’s transform is applied on top of its layout position (pre-transform local origin at the child’s top-left).

---

# 5) Pseudocode (drop-in)

```pseudocode
function layout(node):
  if node.layoutMode == NONE:
     // absolute layout
     for child in node.children:
        // constraints-based repositioning if parent resized; otherwise use child.x, child.y
        placeAbsoluteChild(node, child)
        layout(child) // recurse for child’s own subtree
     return (node.width, node.height)

  // ---- Auto Layout ----
  // 1) resolve child sizes
  sizes = []
  for child in node.children:
     (cw, ch) = layout(child)  // recursive; for leaves, return their given width/height
     sizes.append({P: sizeAlongPrimary(node.layoutMode, cw, ch),
                   C: sizeAlongCounter(node.layoutMode, cw, ch)})

  // 2) build lines
  padStartP, padEndP, padStartC, padEndC = padsFor(node)
  innerFixedP = fixedInnerPrimary(node)
  lineCapacityP = (node.layoutWrap == WRAP && innerFixedP != null) ? innerFixedP : +INF
  lines = []
  current = newLine()
  for i in 0..children.length-1:
     itemP = sizes[i].P
     need = (current.items.empty ? 0 : node.itemSpacing) + itemP
     if node.layoutWrap == WRAP and current.sumP + need > lineCapacityP:
        lines.push(current)
        current = newLine()
        need = itemP
     current.items.push(i)
     current.sumP += need
     current.maxC = max(current.maxC, sizes[i].C)
  if not current.items.empty: lines.push(current)

  // 3) inner sizes
  if primaryAxisIsHorizontal(node):
     padSumP = node.paddingLeft + node.paddingRight
     padSumC = node.paddingTop + node.paddingBottom
  else:
     padSumP = node.paddingTop + node.paddingBottom
     padSumC = node.paddingLeft + node.paddingRight

  if node.primaryAxisSizingMode == FIXED:
     innerP = innerFixedP
  else:
     if node.layoutWrap == WRAP:
        innerP = max(line.sumP for line in lines)  // may be 0
     else:
        innerP = sum(size.P for size in sizes) + node.itemSpacing * max(0, children.length-1)

  if node.counterAxisSizingMode == FIXED:
     innerC = fixedInnerCounter(node) // from node.width/height minus pads
  else:
     innerC = sum(line.maxC for line in lines) + node.counterAxisSpacing * max(0, lines.length-1)

  // update container frame if needed (HUG)
  if node.layoutMode == HORIZONTAL:
     node.width  = innerP + padSumP
     node.height = innerC + padSumC
  else: // VERTICAL
     node.width  = innerC + padSumC
     node.height = innerP + padSumP

  // 4) counter-axis block placement
  totalLinesC = sum(line.maxC for line in lines) + node.counterAxisSpacing * max(0, lines.length-1)
  switch node.counterAxisAlignItems:
     case MIN:    startC = 0
     case CENTER: startC = (innerC - totalLinesC) / 2
     case MAX:    startC = innerC - totalLinesC
     case STRETCH: startC = 0  // items will be stretched below
  cursorC = startC
  for line in lines:
     line.offsetC = cursorC
     cursorC += line.maxC + node.counterAxisSpacing

  // 5) place items within each line (primary axis)
  for line in lines:
     usedP = (sum(sizes[i].P for i in line.items) +
              node.itemSpacing * max(0, line.items.length-1))
     freeP = innerP - usedP
     if node.primaryAxisAlignItems == SPACE_BETWEEN and line.items.length > 1:
        gap = freeP / (line.items.length - 1)
        offsetP = 0
     else:
        gap = node.itemSpacing
        switch node.primaryAxisAlignItems:
           case MIN:    offsetP = 0
           case CENTER: offsetP = freeP / 2
           case MAX:    offsetP = freeP
           case SPACE_BETWEEN: offsetP = 0 // single item or no free space

     cursorP = offsetP
     for i in line.items:
        // counter-axis per-item alignment (uniform, no per-child overrides given)
        if node.counterAxisAlignItems == STRETCH:
           sizes[i].C = line.maxC
           offsetCItem = 0
        else:
           switch node.counterAxisAlignItems:
              case MIN:    offsetCItem = 0
              case CENTER: offsetCItem = (line.maxC - sizes[i].C) / 2
              case MAX:    offsetCItem = line.maxC - sizes[i].C

        if node.layoutMode == HORIZONTAL:
           childX = node.paddingLeft + cursorP
           childY = node.paddingTop  + line.offsetC + offsetCItem
        else: // VERTICAL
           childX = node.paddingLeft + line.offsetC + offsetCItem
           childY = node.paddingTop  + cursorP

        placeChildAtLocal(i, childX, childY, sizes[i]) // then apply child.relativeTransform at render
        cursorP += sizes[i].P + gap
```

---

# 6) Mapping back to your fields

* `x, y` — container’s own local origin in its parent (before `relativeTransform`).
* `width, height` — authoritative when sizing mode is FIXED; overwritten by HUG computations otherwise.
* `constraints` — only used for `layoutMode == NONE` (absolute children) and for responding to parent resizes outside auto layout.
* `relativeTransform` — 2×3 affine applied after local `(x, y)` placement.
* `layoutMode` — NONE | HORIZONTAL | VERTICAL.
* `primaryAxisSizingMode`, `counterAxisSizingMode` — FIXED | HUG.
* `padding*`, `itemSpacing`, `counterAxisSpacing` — as used above.
* `primaryAxisAlignItems` — MIN | CENTER | MAX | SPACE_BETWEEN.
* `counterAxisAlignItems` — MIN | CENTER | MAX | (optionally STRETCH).
* `layoutWrap` — NO_WRAP | WRAP (wrapping only meaningful when the container’s primary inner size is fixed).
* `children` — laid out recursively for Auto Layout; placed by `x,y` for NONE.

---

If you want, give me one concrete example (the values for a parent + a few children), and I’ll run it through this algorithm and show you the exact positions and sizes it yields.

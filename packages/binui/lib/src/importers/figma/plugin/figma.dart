@JS()
library;

import 'dart:js_interop';

@JS('figma')
external PluginAPI get figma;

extension type PluginAPI._(JSObject _) implements JSObject {
  external String get apiVersion;
  external String get command;
  external String get editorType;
  external String get mode;
  external String? get pluginId;
  external String? get widgetId;
  external String? get fileKey;
  external bool get skipInvisibleInstanceChildren;
  external set skipInvisibleInstanceChildren(bool value);
  external TimerAPI? get timer;
  external ViewportAPI get viewport;
  external User? get currentUser;
  external JSArray<ActiveUser> get activeUsers;
  external TextReviewAPI? get textreview;
  external CodegenAPI get codegen;
  external VSCodeAPI? get vscode;
  external DevResourcesAPI? get devResources;
  external PaymentsAPI? get payments;
  external void closePlugin([String? message]);
  external NotificationHandler notify(
    String message, [
    NotificationOptions? options,
  ]);
  external void commitUndo();
  external void triggerUndo();
  external JSPromise<VersionHistoryResult?> saveVersionHistoryAsync(
    String title, [
    String? description,
  ]);
  external void openExternal(String url);
  external void showUI(String html, [ShowUIOptions? options]);
  external UIAPI get ui;
  external UtilAPI get util;
  external ConstantsAPI get constants;
  external ClientStorageAPI get clientStorage;
  external ParametersAPI get parameters;
  external JSPromise<BaseNode?> getNodeByIdAsync(String id);
  external JSPromise<BaseStyle?> getStyleByIdAsync(String id);
  external VariablesAPI get variables;
  external TeamLibraryAPI get teamLibrary;
  external AnnotationsAPI get annotations;
  external DocumentNode get root;
  external PageNode get currentPage;
  external set currentPage(PageNode value);
  external JSPromise setCurrentPageAsync(PageNode page);
  external void on(String type, JSFunction callback);
  external void once(String type, JSFunction callback);
  external void off(String type, JSFunction callback);
  external JSAny get mixed;
  external RectangleNode createRectangle();
  external LineNode createLine();
  external EllipseNode createEllipse();
  external PolygonNode createPolygon();
  external StarNode createStar();
  external VectorNode createVector();
  external TextNode createText();
  external FrameNode createFrame();
  external ComponentNode createComponent();
  external ComponentNode createComponentFromNode(SceneNode node);
  external PageNode createPage();
  external PageNode createPageDivider([String? dividerName]);
  external SliceNode createSlice();
  external SlideNode createSlide([int? row, int? col]);
  external SlideRowNode createSlideRow([int? row]);
  external StickyNode createSticky();
  external ConnectorNode createConnector();
  external ShapeWithTextNode createShapeWithText();
  external CodeBlockNode createCodeBlock();
  external SectionNode createSection();
  external TableNode createTable([int? numRows, int? numColumns]);
  external JSPromise<SceneNode> createNodeFromJSXAsync(JSAny jsx);
  external PaintStyle createPaintStyle();
  external TextStyle createTextStyle();
  external EffectStyle createEffectStyle();
  external GridStyle createGridStyle();
  external JSPromise<JSArray<PaintStyle>> getLocalPaintStylesAsync();
  external JSPromise<JSArray<TextStyle>> getLocalTextStylesAsync();
  external JSPromise<JSArray<EffectStyle>> getLocalEffectStylesAsync();
  external JSPromise<JSArray<GridStyle>> getLocalGridStylesAsync();
  external JSObject? getSelectionColors();
  external void moveLocalPaintStyleAfter(
    PaintStyle targetNode,
    PaintStyle? reference,
  );
  external void moveLocalTextStyleAfter(
    TextStyle targetNode,
    TextStyle? reference,
  );
  external void moveLocalEffectStyleAfter(
    EffectStyle targetNode,
    EffectStyle? reference,
  );
  external void moveLocalGridStyleAfter(
    GridStyle targetNode,
    GridStyle? reference,
  );
  external void moveLocalPaintFolderAfter(
    String targetFolder,
    String? reference,
  );
  external void moveLocalTextFolderAfter(
    String targetFolder,
    String? reference,
  );
  external void moveLocalEffectFolderAfter(
    String targetFolder,
    String? reference,
  );
  external void moveLocalGridFolderAfter(
    String targetFolder,
    String? reference,
  );
  external JSPromise<ComponentNode> importComponentByKeyAsync(String key);
  external JSPromise<ComponentSetNode> importComponentSetByKeyAsync(String key);
  external JSPromise<BaseStyle> importStyleByKeyAsync(String key);
  external JSPromise<JSArray<Font>> listAvailableFontsAsync();
  external JSPromise loadFontAsync(FontName fontName);
  external bool get hasMissingFont;
  external FrameNode createNodeFromSvg(String svg);
  external Image createImage(JSUint8Array data);
  external JSPromise<Image> createImageAsync(String src);
  external Image? getImageByHash(String hash);
  external JSPromise<Video> createVideoAsync(JSUint8Array data);
  external JSPromise<JSAny> createLinkPreviewAsync(String url);
  external MediaNode createGif(String hash);
  external ComponentSetNode combineAsVariants(
    JSArray<ComponentNode> nodes,
    JSObject parent, [
    int? index,
  ]);
  external GroupNode group(
    JSArray<BaseNode> nodes,
    JSObject parent, [
    int? index,
  ]);
  external VectorNode flatten(
    JSArray<BaseNode> nodes, [
    JSObject? parent,
    int? index,
  ]);
  external BooleanOperationNode union(
    JSArray<BaseNode> nodes,
    JSObject parent, [
    int? index,
  ]);
  external BooleanOperationNode subtract(
    JSArray<BaseNode> nodes,
    JSObject parent, [
    int? index,
  ]);
  external BooleanOperationNode intersect(
    JSArray<BaseNode> nodes,
    JSObject parent, [
    int? index,
  ]);
  external BooleanOperationNode exclude(
    JSArray<BaseNode> nodes,
    JSObject parent, [
    int? index,
  ]);
  external JSArray<SceneNode> ungroup(SceneNode node);
  external String base64Encode(JSUint8Array data);
  external JSUint8Array base64Decode(String data);
  external JSPromise<SceneNode?> getFileThumbnailNodeAsync();
  external JSPromise setFileThumbnailNodeAsync(SceneNode? node);
  external JSPromise loadAllPagesAsync();
  external JSArray<JSArray<SlideNode>> getSlideGrid();
  external void setSlideGrid(JSArray<JSArray<SlideNode>> slideGrid);
}

extension type TimerAPI._(JSObject _) implements JSObject {
  external num get remaining;
  external num get total;
  external String get state;
  external void pause();
  external void resume();
  external void start(num seconds);
  external void stop();
}

extension type ViewportAPI._(JSObject _) implements JSObject {
  external Vector get center;
  external set center(Vector value);
  external num get zoom;
  external set zoom(num value);
  external void scrollAndZoomIntoView(JSArray<BaseNode> nodes);
  external Rect get bounds;
  external String get slidesView;
  external set slidesView(String value);
}

extension type TextReviewAPI._(JSObject _) implements JSObject {
  external JSPromise requestToBeEnabledAsync();
  external JSPromise requestToBeDisabledAsync();
  external bool get isEnabled;
}

extension type CodegenAPI._(JSObject _) implements JSObject {
  external void on(String type, JSFunction callback);
  external void once(String type, JSFunction callback);
  external void off(String type, JSFunction callback);
  external CodegenPreferences get preferences;
  external void refresh();
}

extension type VSCodeAPI._(JSObject _) implements JSObject {}

extension type DevResourcesAPI._(JSObject _) implements JSObject {
  external void on(String type, JSFunction callback);
  external void once(String type, JSFunction callback);
  external void off(String type, JSFunction callback);
}

extension type PaymentsAPI._(JSObject _) implements JSObject {
  external PaymentStatus get status;
  external void setPaymentStatusInDevelopment(PaymentStatus status);
  external num getUserFirstRanSecondsAgo();
  external JSPromise initiateCheckoutAsync([JSObject? options]);
  external void requestCheckout();
  external JSPromise<JSString> getPluginPaymentTokenAsync();
}

extension type PaymentStatus._(JSObject _) implements JSObject {
  external String get type;
}

extension type CodegenPreferences._(JSObject _) implements JSObject {
  external String get unit;
  external num? get scaleFactor;
  external JSObject get customSettings;
}

extension type VariablesAPI._(JSObject _) implements JSObject {
  external JSPromise<Variable?> getVariableByIdAsync(String id);
  external JSPromise<VariableCollection?> getVariableCollectionByIdAsync(
    String id,
  );
  external JSPromise<JSArray<Variable>> getLocalVariablesAsync([String? type]);
  external JSPromise<JSArray<VariableCollection>>
  getLocalVariableCollectionsAsync();
  external Variable createVariable(
    String name,
    JSAny collection,
    String resolvedType,
  );
  external VariableCollection createVariableCollection(String name);
  external VariableAlias createVariableAlias(Variable variable);
  external JSPromise<VariableAlias> createVariableAliasByIdAsync(
    String variableId,
  );
  external SolidPaint setBoundVariableForPaint(
    SolidPaint paint,
    String field,
    Variable? variable,
  );
  external Effect setBoundVariableForEffect(
    Effect effect,
    String field,
    Variable? variable,
  );
  external LayoutGrid setBoundVariableForLayoutGrid(
    LayoutGrid layoutGrid,
    String field,
    Variable? variable,
  );
  external JSPromise<Variable> importVariableByKeyAsync(String key);
}

extension type TeamLibraryAPI._(JSObject _) implements JSObject {
  external JSPromise<JSArray<JSObject>>
  getAvailableLibraryVariableCollectionsAsync();
  external JSPromise<JSArray<JSObject>> getVariablesInLibraryCollectionAsync(
    String libraryCollectionKey,
  );
}

extension type AnnotationsAPI._(JSObject _) implements JSObject {
  external JSPromise<JSArray<AnnotationCategory>>
  getAnnotationCategoriesAsync();
  external JSPromise<AnnotationCategory?> getAnnotationCategoryByIdAsync(
    String id,
  );
  external JSPromise<AnnotationCategory> addAnnotationCategoryAsync(
    JSObject categoryInput,
  );
}

extension type UIAPI._(JSObject _) implements JSObject {
  external void show();
  external void hide();
  external void resize(num width, num height);
  external void reposition(num x, num y);
  external JSObject getPosition();
  external void close();
  external void postMessage(
    JSAny pluginMessage, [
    UIPostMessageOptions? options,
  ]);
  external JSFunction? get onmessage;
  external set onmessage(JSFunction? value);
  external void on(String type, JSFunction callback);
  external void once(String type, JSFunction callback);
  external void off(String type, JSFunction callback);
}

extension type UtilAPI._(JSObject _) implements JSObject {
  external RGB rgb(JSAny color);
  external RGBA rgba(JSAny color);
  external SolidPaint solidPaint(JSAny color, [JSObject? overrides]);
  external String normalizeMarkdown(String markdown);
}

extension type ConstantsAPI._(JSObject _) implements JSObject {
  external JSObject get colors;
}

extension type ClientStorageAPI._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> getAsync(String key);
  external JSPromise setAsync(String key, JSAny value);
  external JSPromise deleteAsync(String key);
  external JSPromise<JSArray<JSString>> keysAsync();
}

extension type ParametersAPI._(JSObject _) implements JSObject {
  external void on(String type, JSFunction callback);
  external void once(String type, JSFunction callback);
  external void off(String type, JSFunction callback);
}

extension type NotificationHandler._(JSObject _) implements JSObject {
  external void cancel();
}

extension type NotificationOptions._(JSObject _) implements JSObject {
  external num? get timeout;
  external set timeout(num? value);
  external bool? get error;
  external set error(bool? value);
  external JSFunction? get onDequeue;
  external set onDequeue(JSFunction? value);
  external JSObject? get button;
  external set button(JSObject? value);
}

extension type ShowUIOptions._(JSObject _) implements JSObject {
  external ShowUIOptions({num? width, num? height});
  external bool? get visible;
  external set visible(bool? value);
  external String? get title;
  external set title(String? value);
  external num? get width;
  external set width(num? value);
  external num? get height;
  external set height(num? value);
  external JSObject? get position;
  external set position(JSObject? value);
  external bool? get themeColors;
  external set themeColors(bool? value);
}

extension type UIPostMessageOptions._(JSObject _) implements JSObject {
  external String? get origin;
  external set origin(String? value);
}

extension type VersionHistoryResult._(JSObject _) implements JSObject {
  external String get id;
}

extension type Vector._(JSObject _) implements JSObject {
  external Vector({num? x, num? y});
  external num get x;
  external num get y;
}

extension type Rect._(JSObject _) implements JSObject {
  external Rect({num? x, num? y, num? width, num? height});
  external num get x;
  external num get y;
  external num get width;
  external num get height;
}

extension type RGB._(JSObject _) implements JSObject {
  external RGB({num? r, num? g, num? b});
  external num get r;
  external num get g;
  external num get b;
}

extension type RGBA._(JSObject _) implements JSObject {
  external RGBA({num? r, num? g, num? b, num? a});
  external num get r;
  external num get g;
  external num get b;
  external num get a;
}

extension type FontName._(JSObject _) implements JSObject {
  external FontName({String? family, String? style});
  external String get family;
  external String get style;
}

extension type Font._(JSObject _) implements JSObject {
  external FontName get fontName;
}

extension type User._(JSObject _) implements JSObject {
  external String? get id;
  external String get name;
  external String? get photoUrl;
  external String get color;
  external num get sessionId;
}

extension type ActiveUser._(JSObject _) implements JSObject {
  external String? get id;
  external String get name;
  external String? get photoUrl;
  external String get color;
  external num get sessionId;
  external Vector? get position;
  external Rect get viewport;
  external JSArray<JSString> get selection;
}

extension type BaseNode._(JSObject _) implements JSObject {
  external String get id;
  external JSObject? get parent;
  external String get name;
  external set name(String value);
  external bool get removed;
  external void remove();
  external void setRelaunchData(JSObject data);
  external JSObject getRelaunchData();
  external bool get isAsset;
  external JSPromise<JSObject> getCSSAsync();
  external String getPluginData(String key);
  external void setPluginData(String key, String value);
  external JSArray<JSString> getPluginDataKeys();
  external String getSharedPluginData(String namespace, String key);
  external void setSharedPluginData(String namespace, String key, String value);
  external JSArray<JSString> getSharedPluginDataKeys(String namespace);
}

extension type DocumentNode._(JSObject _) implements BaseNode {
  external String get type;
  external JSArray<PageNode> get children;
  external String get documentColorProfile;
  external void appendChild(PageNode child);
  external void insertChild(int index, PageNode child);
  external JSArray<PageNode> findChildren([JSFunction? callback]);
  external PageNode? findChild(JSFunction callback);
  external JSArray<JSObject> findAll([JSFunction? callback]);
  external JSObject? findOne(JSFunction callback);
  external JSArray<JSObject> findAllWithCriteria(JSObject criteria);
  external JSArray<WidgetNode> findWidgetNodesByWidgetId(String widgetId);
}

extension type PageNode._(JSObject _) implements BaseNode {
  external String get type;
  external PageNode clone();
  external JSArray<Guide> get guides;
  external set guides(JSArray<Guide> value);
  external JSArray<SceneNode> get selection;
  external set selection(JSArray<SceneNode> value);
  external JSObject? get selectedTextRange;
  external set selectedTextRange(JSObject? value);
  external JSArray<JSObject> get flowStartingPoints;
  external JSArray<Paint> get backgrounds;
  external set backgrounds(JSArray<Paint> value);
  external JSArray<Paint> get prototypeBackgrounds;
  external set prototypeBackgrounds(JSArray<Paint> value);
  external SceneNode? get prototypeStartNode;
  external bool get isPageDivider;
  external JSPromise loadAsync();
  external void on(String type, JSFunction callback);
  external void once(String type, JSFunction callback);
  external void off(String type, JSFunction callback);
  external SlideNode? get focusedSlide;
  external set focusedSlide(SlideNode? value);
  external JSArray<SceneNode> get children;
  external void appendChild(SceneNode child);
  external void insertChild(int index, SceneNode child);
  external JSArray<SceneNode> findChildren([JSFunction? callback]);
  external SceneNode? findChild(JSFunction callback);
  external JSArray<SceneNode> findAll([JSFunction? callback]);
  external SceneNode? findOne(JSFunction callback);
  external JSArray<SceneNode> findAllWithCriteria(JSObject criteria);
  external JSArray<WidgetNode> findWidgetNodesByWidgetId(String widgetId);
  external JSArray<Measurement> getMeasurements();
  external JSArray<Measurement> getMeasurementsForNode(SceneNode node);
  external Measurement addMeasurement(
    JSObject start,
    JSObject end, [
    JSObject? options,
  ]);
  external Measurement editMeasurement(String id, JSObject newValue);
  external void deleteMeasurement(String id);
}

extension type SceneNode._(JSObject _) implements BaseNode {
  external String get type;
  external bool get visible;
  external set visible(bool value);
  external bool get locked;
  external set locked(bool value);
  external JSArray<SceneNode> get stuckNodes;
  external JSArray<ConnectorNode> get attachedConnectors;
  external JSObject? get componentPropertyReferences;
  external set componentPropertyReferences(JSObject? value);
  external JSObject? get boundVariables;
  external void setBoundVariable(String field, JSAny? variable);
  external JSObject? get inferredVariables;
  external JSObject get resolvedVariableModes;
  external num get x;
  external set x(num value);
  external num get y;
  external set y(num value);
  external num get width;
  external num get height;
  external num? get minWidth;
  external set minWidth(num? value);
  external num? get maxWidth;
  external set maxWidth(num? value);
  external num? get minHeight;
  external set minHeight(num? value);
  external num? get maxHeight;
  external set maxHeight(num? value);
  external JSArray<JSNumber> get relativeTransform;
  external set relativeTransform(JSArray<JSNumber> value);
  external JSArray<JSNumber> get absoluteTransform;
  external Rect? get absoluteBoundingBox;
  external Rect? get absoluteRenderBounds;
  external bool get constrainProportions;
  external set constrainProportions(bool value);
  external num get rotation;
  external set rotation(num value);
  external String get layoutSizingHorizontal;
  external set layoutSizingHorizontal(String value);
  external String get layoutSizingVertical;
  external set layoutSizingVertical(String value);
  external void resize(num width, num height);
  external void resizeWithoutConstraints(num width, num height);
  external void rescale(num scale);
  external JSPromise<JSUint8Array> exportAsync([JSObject? settings]);
}

extension type FrameNode._(JSObject _) implements SceneNode {
  external FrameNode clone();
  external JSArray<SceneNode> get children;
  external void appendChild(SceneNode child);
  external void insertChild(int index, SceneNode child);
  external JSArray<SceneNode> findChildren([JSFunction? callback]);
  external SceneNode? findChild(JSFunction callback);
  external JSArray<SceneNode> findAll([JSFunction? callback]);
  external SceneNode? findOne(JSFunction callback);
  external JSArray<SceneNode> findAllWithCriteria(JSObject criteria);
  external JSArray<WidgetNode> findWidgetNodesByWidgetId(String widgetId);
  external JSArray<Paint> get fills;
  external set fills(JSArray<Paint> value);
  external JSArray<Paint> get strokes;
  external set strokes(JSArray<Paint> value);
  external num get strokeWeight;
  external set strokeWeight(num value);
  external JSArray<Effect> get effects;
  external set effects(JSArray<Effect> value);
  external JSArray<LayoutGrid> get layoutGrids;
  external set layoutGrids(JSArray<LayoutGrid> value);
  external bool get clipsContent;
  external set clipsContent(bool value);
  external JSArray<Guide> get guides;
  external set guides(JSArray<Guide> value);
  external String get layoutMode;
  external set layoutMode(String value);
  external num get paddingLeft;
  external set paddingLeft(num value);
  external num get paddingRight;
  external set paddingRight(num value);
  external num get paddingTop;
  external set paddingTop(num value);
  external num get paddingBottom;
  external set paddingBottom(num value);
  external num get itemSpacing;
  external set itemSpacing(num value);
  external String get layoutAlign;
  external set layoutAlign(String value);
  external num get layoutGrow;
  external set layoutGrow(num value);
  external bool get expanded;
  external set expanded(bool value);
  external num get cornerRadius;
  external set cornerRadius(num value);
  external num get topLeftRadius;
  external set topLeftRadius(num value);
  external num get topRightRadius;
  external set topRightRadius(num value);
  external num get bottomLeftRadius;
  external set bottomLeftRadius(num value);
  external num get bottomRightRadius;
  external set bottomRightRadius(num value);
}

extension type GroupNode._(JSObject _) implements SceneNode {
  external GroupNode clone();
  external JSArray<SceneNode> get children;
  external bool get expanded;
  external set expanded(bool value);
}

extension type SliceNode._(JSObject _) implements SceneNode {
  external SliceNode clone();
}

extension type RectangleNode._(JSObject _) implements SceneNode {
  external RectangleNode clone();
  external num get cornerRadius;
  external set cornerRadius(num value);
  external num get topLeftRadius;
  external set topLeftRadius(num value);
  external num get topRightRadius;
  external set topRightRadius(num value);
  external num get bottomLeftRadius;
  external set bottomLeftRadius(num value);
  external num get bottomRightRadius;
  external set bottomRightRadius(num value);
  external JSArray<Paint> get fills;
  external set fills(JSArray<Paint> value);
  external JSArray<Paint> get strokes;
  external set strokes(JSArray<Paint> value);
}

extension type LineNode._(JSObject _) implements SceneNode {
  external LineNode clone();
}

extension type EllipseNode._(JSObject _) implements SceneNode {
  external EllipseNode clone();
  external ArcData get arcData;
  external set arcData(ArcData value);
}

extension type PolygonNode._(JSObject _) implements SceneNode {
  external PolygonNode clone();
  external int get pointCount;
  external set pointCount(int value);
}

extension type StarNode._(JSObject _) implements SceneNode {
  external StarNode clone();
  external int get pointCount;
  external set pointCount(int value);
  external num get innerRadius;
  external set innerRadius(num value);
}

extension type VectorNode._(JSObject _) implements SceneNode {
  external VectorNode clone();
  external VectorNetwork get vectorNetwork;
  external set vectorNetwork(VectorNetwork value);
  external JSPromise setVectorNetworkAsync(VectorNetwork vectorNetwork);
  external JSArray<VectorPath> get vectorPaths;
  external set vectorPaths(JSArray<VectorPath> value);
}

extension type TextNode._(JSObject _) implements SceneNode {
  external TextNode clone();
  external String get characters;
  external set characters(String value);
  external bool get hasMissingFont;
  external JSAny get fontSize;
  external set fontSize(JSAny value);
  external JSAny get fontName;
  external set fontName(JSAny value);
  external String get textAlignHorizontal;
  external set textAlignHorizontal(String value);
  external String get textAlignVertical;
  external set textAlignVertical(String value);
  external String get textAutoResize;
  external set textAutoResize(String value);
  external void insertCharacters(
    int start,
    String characters, [
    String? useStyle,
  ]);
  external void deleteCharacters(int start, int end);
  external JSArray<Paint> get fills;
  external set fills(JSArray<Paint> value);
}

extension type TextPathNode._(JSObject _) implements SceneNode {
  external TextPathNode clone();
  external String get characters;
  external set characters(String value);
}

extension type ComponentSetNode._(JSObject _) implements SceneNode {
  external ComponentSetNode clone();
  external ComponentNode get defaultVariant;
  external JSObject get componentPropertyDefinitions;
  external String addComponentProperty(
    String propertyName,
    String type,
    JSAny defaultValue, [
    JSObject? options,
  ]);
  external String editComponentProperty(String propertyName, JSObject newValue);
  external void deleteComponentProperty(String propertyName);
  external JSArray<SceneNode> get children;
}

extension type ComponentNode._(JSObject _) implements SceneNode {
  external ComponentNode clone();
  external InstanceNode createInstance();
  external JSPromise<JSArray<InstanceNode>> getInstancesAsync();
  external JSArray<SceneNode> get children;
  external JSObject get componentPropertyDefinitions;
}

extension type InstanceNode._(JSObject _) implements SceneNode {
  external InstanceNode clone();
  external JSPromise<ComponentNode?> getMainComponentAsync();
  external ComponentNode? get mainComponent;
  external set mainComponent(ComponentNode? value);
  external void swapComponent(ComponentNode componentNode);
  external void setProperties(JSObject properties);
  external JSObject get componentProperties;
  external FrameNode detachInstance();
  external num get scaleFactor;
  external set scaleFactor(num value);
  external JSArray<InstanceNode> get exposedInstances;
  external bool get isExposedInstance;
  external set isExposedInstance(bool value);
  external JSArray<SceneNode> get children;
}

extension type BooleanOperationNode._(JSObject _) implements SceneNode {
  external BooleanOperationNode clone();
  external String get booleanOperation;
  external set booleanOperation(String value);
  external JSArray<SceneNode> get children;
}

extension type StickyNode._(JSObject _) implements SceneNode {
  external StickyNode clone();
  external TextSublayerNode get text;
  external bool get authorVisible;
  external set authorVisible(bool value);
  external String get authorName;
  external bool get isWideWidth;
  external set isWideWidth(bool value);
}

extension type StampNode._(JSObject _) implements SceneNode {
  external StampNode clone();
  external JSPromise<JSObject?> getAuthorAsync();
}

extension type TableNode._(JSObject _) implements SceneNode {
  external TableNode clone();
  external int get numRows;
  external int get numColumns;
  external TableCellNode cellAt(int rowIndex, int columnIndex);
  external void insertRow(int rowIndex);
  external void insertColumn(int columnIndex);
  external void removeRow(int rowIndex);
  external void removeColumn(int columnIndex);
  external void moveRow(int fromIndex, int toIndex);
  external void moveColumn(int fromIndex, int toIndex);
  external void resizeRow(int rowIndex, num height);
  external void resizeColumn(int columnIndex, num width);
}

extension type TableCellNode._(JSObject _) implements JSObject {
  external String get type;
  external TextSublayerNode get text;
  external int get rowIndex;
  external int get columnIndex;
  external TableNode get parent;
  external num get height;
  external num get width;
  external JSArray<Paint> get fills;
  external set fills(JSArray<Paint> value);
}

extension type HighlightNode._(JSObject _) implements SceneNode {
  external HighlightNode clone();
}

extension type WashiTapeNode._(JSObject _) implements SceneNode {
  external WashiTapeNode clone();
}

extension type ShapeWithTextNode._(JSObject _) implements SceneNode {
  external ShapeWithTextNode clone();
  external String get shapeType;
  external set shapeType(String value);
  external TextSublayerNode get text;
}

extension type CodeBlockNode._(JSObject _) implements SceneNode {
  external CodeBlockNode clone();
  external String get code;
  external set code(String value);
  external String get codeLanguage;
  external set codeLanguage(String value);
}

extension type ConnectorNode._(JSObject _) implements SceneNode {
  external ConnectorNode clone();
  external TextSublayerNode get text;
  external LabelSublayerNode get textBackground;
  external String get connectorLineType;
  external set connectorLineType(String value);
  external JSObject get connectorStart;
  external set connectorStart(JSObject value);
  external JSObject get connectorEnd;
  external set connectorEnd(JSObject value);
  external String get connectorStartStrokeCap;
  external set connectorStartStrokeCap(String value);
  external String get connectorEndStrokeCap;
  external set connectorEndStrokeCap(String value);
}

extension type WidgetNode._(JSObject _) implements SceneNode {
  external WidgetNode clone();
  external String get widgetId;
  external JSObject get widgetSyncedState;
  external WidgetNode cloneWidget(
    JSObject syncedStateOverrides, [
    JSObject? syncedMapOverrides,
  ]);
  external void setWidgetSyncedState(
    JSObject syncedState, [
    JSObject? syncedMap,
  ]);
}

extension type EmbedNode._(JSObject _) implements SceneNode {
  external EmbedNode clone();
  external JSObject get embedData;
}

extension type LinkUnfurlNode._(JSObject _) implements SceneNode {
  external LinkUnfurlNode clone();
  external JSObject get linkUnfurlData;
}

extension type MediaNode._(JSObject _) implements SceneNode {
  external MediaNode clone();
  external JSObject get mediaData;
}

extension type SectionNode._(JSObject _) implements SceneNode {
  external SectionNode clone();
  external bool get sectionContentsHidden;
  external set sectionContentsHidden(bool value);
  external JSArray<SceneNode> get children;
}

extension type SlideNode._(JSObject _) implements SceneNode {
  external SlideNode clone();
  external JSObject getSlideTransition();
  external void setSlideTransition(JSObject transition);
  external bool get isSkippedSlide;
  external set isSkippedSlide(bool value);
  external JSArray<SceneNode> get children;
}

extension type SlideRowNode._(JSObject _) implements SceneNode {
  external SlideRowNode clone();
  external JSArray<SlideNode> get children;
}

extension type SlideGridNode._(JSObject _) implements SceneNode {
  external SlideGridNode clone();
  external JSArray<SlideRowNode> get children;
}

extension type InteractiveSlideElementNode._(JSObject _) implements SceneNode {
  external InteractiveSlideElementNode clone();
  external String get interactiveSlideElementType;
}

extension type TextSublayerNode._(JSObject _) implements JSObject {
  external String get characters;
  external set characters(String value);
  external JSAny get fontSize;
  external set fontSize(JSAny value);
  external JSAny get fontName;
  external set fontName(JSAny value);
  external JSArray<Paint> get fills;
  external set fills(JSArray<Paint> value);
}

extension type LabelSublayerNode._(JSObject _) implements JSObject {
  external JSArray<Paint> get fills;
  external set fills(JSArray<Paint> value);
}

extension type BaseStyle._(JSObject _) implements JSObject {
  external String get id;
  external String get name;
  external set name(String value);
  external String get description;
  external set description(String value);
  external void remove();
}

extension type PaintStyle._(JSObject _) implements BaseStyle {
  external String get type;
  external String get id;
  external String get name;
  external set name(String value);
  external String get description;
  external set description(String value);
  external JSArray<Paint> get paints;
  external set paints(JSArray<Paint> value);
  external void remove();
  external JSPromise<JSString> getPublishStatusAsync();
}

extension type TextStyle._(JSObject _) implements BaseStyle {
  external String get type;
  external String get id;
  external String get name;
  external set name(String value);
  external String get description;
  external set description(String value);
  external num get fontSize;
  external set fontSize(num value);
  external FontName get fontName;
  external set fontName(FontName value);
  external void remove();
  external JSPromise<JSString> getPublishStatusAsync();
}

extension type EffectStyle._(JSObject _) implements BaseStyle {
  external String get type;
  external String get id;
  external String get name;
  external set name(String value);
  external String get description;
  external set description(String value);
  external JSArray<Effect> get effects;
  external set effects(JSArray<Effect> value);
  external void remove();
  external JSPromise<JSString> getPublishStatusAsync();
}

extension type GridStyle._(JSObject _) implements BaseStyle {
  external String get type;
  external String get id;
  external String get name;
  external set name(String value);
  external String get description;
  external set description(String value);
  external JSArray<LayoutGrid> get layoutGrids;
  external set layoutGrids(JSArray<LayoutGrid> value);
  external void remove();
  external JSPromise<JSString> getPublishStatusAsync();
}

extension type Paint._(JSObject _) implements JSObject {
  external Paint({
    String? type,
    bool? visible,
    num? opacity,
    String? blendMode,
    RGB? color,
    String? imageHash,
    String? scaleMode,
  });
  external String get type;
  external bool? get visible;
  external num? get opacity;
  external String? get blendMode;
  external RGB? get color;
  external String? get imageHash;
  external String? get scaleMode;
}

extension type SolidPaint._(JSObject _) implements Paint {
  external SolidPaint({
    RGB? color,
    num? opacity,
    String? blendMode,
    bool? visible,
  });
  external RGB get color;
  external set color(RGB value);
}

extension type Effect._(JSObject _) implements JSObject {
  external Effect({String? type, bool? visible, RGBA? color, num? radius});
  external String get type;
  external bool get visible;
  external RGBA? get color;
  external num? get radius;
}

extension type LayoutGrid._(JSObject _) implements JSObject {
  external LayoutGrid({
    String? pattern,
    num? sectionSize,
    bool? visible,
    RGBA? color,
  });
  external String get pattern;
  external num? get sectionSize;
  external bool? get visible;
  external RGBA? get color;
}

extension type Guide._(JSObject _) implements JSObject {
  external Guide({String? axis, num? offset});
  external String get axis;
  external num get offset;
}

extension type VectorNetwork._(JSObject _) implements JSObject {
  external JSArray<VectorVertex> get vertices;
  external JSArray<VectorSegment> get segments;
  external JSArray<VectorRegion>? get regions;
}

extension type VectorVertex._(JSObject _) implements JSObject {
  external num get x;
  external num get y;
}

extension type VectorSegment._(JSObject _) implements JSObject {
  external int get start;
  external int get end;
}

extension type VectorRegion._(JSObject _) implements JSObject {
  external String get windingRule;
  external JSArray<JSArray<JSNumber>> get loops;
}

extension type VectorPath._(JSObject _) implements JSObject {
  external String get windingRule;
  external String get data;
}

extension type ArcData._(JSObject _) implements JSObject {
  external num get startingAngle;
  external num get endingAngle;
  external num get innerRadius;
}

extension type Variable._(JSObject _) implements JSObject {
  external String get id;
  external String get name;
  external set name(String value);
  external String get description;
  external set description(String value);
  external bool get hiddenFromPublishing;
  external set hiddenFromPublishing(bool value);
  external JSPromise<JSString> getPublishStatusAsync();
  external bool get remote;
  external String get variableCollectionId;
  external String get key;
  external String get resolvedType;
  external JSObject resolveForConsumer(SceneNode consumer);
  external void setValueForMode(String modeId, JSAny newValue);
  external JSObject get valuesByMode;
  external void remove();
  external JSArray<JSString> get scopes;
  external set scopes(JSArray<JSString> value);
  external JSObject get codeSyntax;
  external void setVariableCodeSyntax(String platform, String value);
  external void removeVariableCodeSyntax(String platform);
}

extension type VariableCollection._(JSObject _) implements JSObject {
  external String get id;
  external String get name;
  external set name(String value);
  external bool get hiddenFromPublishing;
  external set hiddenFromPublishing(bool value);
  external JSPromise<JSString> getPublishStatusAsync();
  external bool get remote;
  external JSArray<JSObject> get modes;
  external JSArray<JSString> get variableIds;
  external String get defaultModeId;
  external String get key;
  external void remove();
  external void removeMode(String modeId);
  external String addMode(String name);
  external void renameMode(String modeId, String newName);
}

extension type VariableAlias._(JSObject _) implements JSObject {
  external String get type;
  external String get id;
}

extension type AnnotationCategory._(JSObject _) implements JSObject {
  external String get id;
  external String get label;
  external String get color;
  external bool get isPreset;
  external void remove();
  external void setColor(String color);
  external void setLabel(String label);
}

extension type Measurement._(JSObject _) implements JSObject {
  external String get id;
  external JSObject get start;
  external JSObject get end;
  external JSObject get offset;
  external String get freeText;
}

extension type Image._(JSObject _) implements JSObject {
  external String get hash;
  external JSPromise<JSUint8Array> getBytesAsync();
  external JSPromise<JSObject> getSizeAsync();
}

extension type Video._(JSObject _) implements JSObject {
  external String get hash;
}

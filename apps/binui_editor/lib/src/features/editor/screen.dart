import 'dart:convert';

import 'package:binui/binui.dart' as b;
import 'package:flutter/material.dart';

import '../../services/library_manager.dart';
import 'code_panel.dart';
import 'json_editor.dart';
import 'library_picker_modal.dart';
import 'preview_panel.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

const double _compactBreakpoint = 700;

class _EditorScreenState extends State<EditorScreen> {
  final TextEditingController _jsonController = TextEditingController();
  final LibraryManager _libraryManager = LibraryManager();
  b.Library? _library;
  String? _errorMessage;
  bool _showEditor = true;
  bool _showPreview = true;
  bool _showCode = false;
  bool _isInitialized = false;
  String? _lastSelectedLibraryId;

  @override
  void initState() {
    super.initState();
    _libraryManager.addListener(_onLibraryManagerChanged);
  }

  void _onLibraryManagerChanged() {
    if (!_isInitialized && !_libraryManager.isLoading) {
      _isInitialized = true;
      _lastSelectedLibraryId = _libraryManager.selectedLibraryId;
      _loadCurrentLibrary();
    } else if (_isInitialized &&
        _lastSelectedLibraryId != _libraryManager.selectedLibraryId) {
      // Library selection changed
      _lastSelectedLibraryId = _libraryManager.selectedLibraryId;
      _loadCurrentLibrary();
    }
    setState(() {});
  }

  void _loadCurrentLibrary() {
    final library = _libraryManager.currentLibrary;
    if (library != null) {
      final json = JsonEncoder.withIndent('  ').convert(library.toProto3Json());
      _jsonController.text = json;
      _library = library;
      _errorMessage = null;
    } else if (_libraryManager.libraries.isEmpty) {
      // No libraries exist, show sample
      final json = JsonEncoder.withIndent(
        '  ',
      ).convert(jsonDecode(_sampleJson));
      _jsonController.text = json;
      _parseJson(json);
    } else {
      // Libraries exist but none selected
      _jsonController.clear();
      _library = null;
      _errorMessage = null;
    }
  }

  @override
  void dispose() {
    _libraryManager.removeListener(_onLibraryManagerChanged);
    _libraryManager.dispose();
    _jsonController.dispose();
    super.dispose();
  }

  void _parseJson(String json) {
    if (json.trim().isEmpty) {
      setState(() {
        _library = null;
        _errorMessage = null;
      });
      _libraryManager.updateCurrentLibrary(null);
      return;
    }

    try {
      final library = b.Library();
      library.mergeFromProto3Json(jsonDecode(json));
      setState(() {
        _library = library;
        _errorMessage = null;
      });
      _libraryManager.updateCurrentLibrary(library);
    } catch (e) {
      setState(() {
        _library = null;
        _errorMessage = e.toString();
      });
    }
  }

  void _toggleEditor(bool isCompact) {
    setState(() {
      if (isCompact) {
        _showEditor = true;
        _showPreview = false;
        _showCode = false;
      } else {
        _showEditor = !_showEditor;
        if (!_showEditor && !_showPreview && !_showCode) {
          _showPreview = true;
        }
      }
    });
  }

  void _togglePreview(bool isCompact) {
    setState(() {
      if (isCompact) {
        _showPreview = true;
        _showEditor = false;
        _showCode = false;
      } else {
        _showPreview = !_showPreview;
        if (!_showEditor && !_showPreview && !_showCode) {
          _showEditor = true;
        }
      }
    });
  }

  void _toggleCode(bool isCompact) {
    setState(() {
      if (isCompact) {
        _showCode = true;
        _showEditor = false;
        _showPreview = false;
      } else {
        _showCode = !_showCode;
        if (!_showEditor && !_showPreview && !_showCode) {
          _showEditor = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < _compactBreakpoint;
        final showEditor = isCompact ? _showEditor : _showEditor;
        final showPreview = isCompact ? _showPreview : _showPreview;
        final showCode = isCompact ? _showCode : _showCode;

        // Ensure at least one is shown on compact if nothing is selected (fallback)
        // Though _toggle methods handle this, initial state might need check.

        return Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _NavigationRail(
                showEditor: showEditor,
                showPreview: showPreview,
                showCode: showCode,
                onEditorTap: () => _toggleEditor(isCompact),
                onPreviewTap: () => _togglePreview(isCompact),
                onCodeTap: () => _toggleCode(isCompact),
                onLibraryTap: () =>
                    LibraryPickerModal.show(context, _libraryManager),
                libraryManager: _libraryManager,
              ),
              VerticalDivider(
                width: 1,
                thickness: 1,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
              if (showEditor)
                Expanded(
                  child: Container(
                    decoration: (showPreview || showCode)
                        ? BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Theme.of(
                                  context,
                                ).colorScheme.outlineVariant,
                              ),
                            ),
                          )
                        : null,
                    child: JsonEditor(
                      controller: _jsonController,
                      onChanged: _parseJson,
                      onClear: () {
                        _jsonController.clear();
                        setState(() {
                          _library = null;
                          _errorMessage = null;
                        });
                        _libraryManager.updateCurrentLibrary(null);
                      },
                      errorMessage: _errorMessage,
                    ),
                  ),
                ),
              if (showPreview)
                Expanded(
                  child: Container(
                    decoration: showCode
                        ? BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Theme.of(
                                  context,
                                ).colorScheme.outlineVariant,
                              ),
                            ),
                          )
                        : null,
                    child: _library != null
                        ? PreviewPanel(library: _library!)
                        : _EmptyPreview(hasError: _errorMessage != null),
                  ),
                ),
              if (showCode)
                Expanded(
                  child: _library != null
                      ? CodePanel(library: _library!)
                      : const Center(child: Text('No library loaded')),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _NavigationRail extends StatelessWidget {
  const _NavigationRail({
    required this.showEditor,
    required this.showPreview,
    required this.showCode,
    required this.onEditorTap,
    required this.onPreviewTap,
    required this.onCodeTap,
    required this.onLibraryTap,
    required this.libraryManager,
  });

  final bool showEditor;
  final bool showPreview;
  final bool showCode;
  final VoidCallback onEditorTap;
  final VoidCallback onPreviewTap;
  final VoidCallback onCodeTap;
  final VoidCallback onLibraryTap;
  final LibraryManager libraryManager;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      child: Column(
        children: [
          const SizedBox(height: 8),
          _RailButton(
            icon: Icons.code,
            label: 'Editor',
            isSelected: showEditor,
            onTap: onEditorTap,
          ),
          const SizedBox(height: 4),
          _RailButton(
            icon: Icons.preview,
            label: 'Preview',
            isSelected: showPreview,
            onTap: onPreviewTap,
          ),
          const SizedBox(height: 4),
          _RailButton(
            icon: Icons.integration_instructions,
            label: 'Code',
            isSelected: showCode,
            onTap: onCodeTap,
          ),
          const Spacer(),
          AnimatedBuilder(
            animation: libraryManager,
            builder: (context, child) {
              final metadata = libraryManager.currentLibraryMetadata;
              return _RailButton(
                icon: Icons.folder,
                label: metadata?.name ?? 'Libraries',
                isSelected: false,
                onTap: onLibraryTap,
                showBadge: libraryManager.libraries.isNotEmpty,
                badgeCount: libraryManager.libraries.length,
              );
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _RailButton extends StatelessWidget {
  const _RailButton({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.showBadge = false,
    this.badgeCount,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final bool showBadge;
  final int? badgeCount;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Tooltip(
      message: label,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: isSelected
                ? colorScheme.primaryContainer
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                icon,
                color: isSelected
                    ? colorScheme.onPrimaryContainer
                    : colorScheme.onSurfaceVariant,
              ),
              if (showBadge && badgeCount != null && badgeCount! > 0)
                Positioned(
                  top: 6,
                  right: 6,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      badgeCount.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        color: colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyPreview extends StatelessWidget {
  const _EmptyPreview({required this.hasError});

  final bool hasError;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.preview,
                size: 18,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                'Preview',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  hasError ? Icons.error_outline : Icons.data_object,
                  size: 64,
                  color: hasError
                      ? Theme.of(context).colorScheme.error.withAlpha(150)
                      : Theme.of(context).colorScheme.outline,
                ),
                const SizedBox(height: 16),
                Text(
                  hasError
                      ? 'Fix the JSON errors to see the preview'
                      : 'Paste JSON to preview',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  hasError
                      ? 'Check the error message in the editor panel'
                      : 'The preview will update automatically',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const _sampleJson = r'''
{"name":"Slides: Flutter vs Figma","documentation":"Imported from Figma file: unknown","variables":[{"id":1,"name":"Demo-Tokens","variables":[{"id":2,"name":"Red/LightBackground","documentation":""},{"id":3,"name":"Blue/Foreground","documentation":""},{"id":4,"name":"Orange/LightBackground","documentation":""},{"id":5,"name":"Orange/Foreground","documentation":""},{"id":6,"name":"Blue/LightBackground","documentation":""},{"id":7,"name":"Blue/LightBackgroundPressed","documentation":""},{"id":8,"name":"Blue/OverlayBackground","documentation":""},{"id":9,"name":"Blue/OverlayForeground","documentation":""},{"id":10,"name":"Blue/Background","documentation":""},{"id":11,"name":"Blue/Accent","documentation":""},{"id":12,"name":"Blue/BackgroundAccent","documentation":""},{"id":13,"name":"Blue/BackgroundAccentTransparent","documentation":""},{"id":14,"name":"Blue/BackgroundTransparent","documentation":""},{"id":15,"name":"Red/OverlayForeground","documentation":""},{"id":16,"name":"Red/Background","documentation":""},{"id":17,"name":"Red/Accent","documentation":""}],"variants":[{"id":26,"name":"Light","values":[{"color":{"red":0.8470588326454163,"green":0.30980393290519714,"blue":0.22745098173618317,"alpha":0.15000000596046448,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.003921568859368563,"green":0.003921568859368563,"blue":0.003921568859368563,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":0.8745098114013672,"blue":0.7803921699523926,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.5686274766921997,"green":0.33725491166114807,"blue":0.25882354378700256,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9411764740943909,"green":0.9490196108818054,"blue":0.9921568632125854,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.7543757557868958,"green":0.7921642065048218,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.29411765933036804,"green":0.3843137323856354,"blue":0.886274516582489,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":1,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9686274528503418,"green":0.9686274528503418,"blue":0.9686274528503418,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.23137255012989044,"green":0.3294117748737335,"blue":0.8745098114013672,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.23137255012989044,"green":0.3294117748737335,"blue":0.8745098114013672,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.23137255012989044,"green":0.3294117748737335,"blue":0.8745098114013672,"alpha":0,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9686274528503418,"green":0.9686274528503418,"blue":0.9686274528503418,"alpha":0,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":1,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":0.95686274766922,"blue":0.9529411792755127,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.8470588326454163,"green":0.30980393290519714,"blue":0.22745098173618317,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}}]},{"id":27,"name":"Dark","values":[{"color":{"red":0.8470588326454163,"green":0.30980393290519714,"blue":0.22745098173618317,"alpha":0.15000000596046448,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":1,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.1359349489212036,"green":0.05590805411338806,"blue":0.17302058637142181,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.6647964119911194,"green":0.3579654395580292,"blue":0.8424354195594788,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9762036204338074,"green":0.9790374040603638,"blue":0.9963942170143127,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.7529411911964417,"green":0.7921568751335144,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.1473540961742401,"green":0.20595701038837433,"blue":0.46967023611068726,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":1,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.2356289178133011,"green":0.27579379081726074,"blue":0.521803617477417,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.23137255012989044,"green":0.3294117748737335,"blue":0.8745098114013672,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.09942083805799484,"green":0.11253262311220169,"blue":0.18543419241905212,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.09803921729326248,"green":0.11372549086809158,"blue":0.18431372940540314,"alpha":0,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9686274528503418,"green":0.9686274528503418,"blue":0.9686274528503418,"alpha":0,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.7370793223381042,"green":0.21790045499801636,"blue":0.17463552951812744,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.22203651070594788,"green":0.07200472801923752,"blue":0.05836547911167145,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":0.6702659726142883,"blue":0.6197227835655212,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}}]}]},{"id":18,"name":"Demo-Theme","variables":[{"id":19,"name":"Background","documentation":""},{"id":20,"name":"Foreground","documentation":""},{"id":21,"name":"Button/Background","documentation":""},{"id":22,"name":"Button/Foreground","documentation":""},{"id":23,"name":"Tag/Background","documentation":""},{"id":24,"name":"Tag/Foreground","documentation":""},{"id":25,"name":"BackgroundTransparent","documentation":""}],"variants":[{"id":28,"name":"White","values":[{"alias":{"variable":{"collectionId":1,"variableId":10}}},{"alias":{"variable":{"collectionId":1,"variableId":3}}},{"alias":{"variable":{"collectionId":1,"variableId":6}}},{"alias":{"variable":{"collectionId":1,"variableId":11}}},{"alias":{"variable":{"collectionId":1,"variableId":6}}},{"alias":{"variable":{"collectionId":1,"variableId":11}}},{"alias":{"variable":{"collectionId":1,"variableId":14}}}]},{"id":29,"name":"Red","values":[{"alias":{"variable":{"collectionId":1,"variableId":16}}},{"alias":{"variable":{"collectionId":1,"variableId":17}}},{"alias":{"variable":{"collectionId":1,"variableId":17}}},{"alias":{"variable":{"collectionId":1,"variableId":15}}},{"alias":{"variable":{"collectionId":1,"variableId":2}}},{"alias":{"variable":{"collectionId":1,"variableId":17}}},{"alias":{"variable":{"collectionId":1,"variableId":16}}}]},{"id":30,"name":"Orange","values":[{"alias":{"variable":{"collectionId":1,"variableId":4}}},{"alias":{"variable":{"collectionId":1,"variableId":5}}},{"alias":{"variable":{"collectionId":1,"variableId":4}}},{"alias":{"variable":{"collectionId":1,"variableId":5}}},{"alias":{"variable":{"collectionId":1,"variableId":4}}},{"alias":{"variable":{"collectionId":1,"variableId":5}}},{"alias":{"variable":{"collectionId":1,"variableId":4}}}]},{"id":31,"name":"Blue","values":[{"alias":{"variable":{"collectionId":1,"variableId":12}}},{"alias":{"variable":{"collectionId":1,"variableId":9}}},{"alias":{"variable":{"collectionId":1,"variableId":8}}},{"alias":{"variable":{"collectionId":1,"variableId":9}}},{"alias":{"variable":{"collectionId":1,"variableId":8}}},{"alias":{"variable":{"collectionId":1,"variableId":9}}},{"alias":{"variable":{"collectionId":1,"variableId":13}}}]}]},{"id":37,"name":"Styles","variables":[{"id":32,"name":"Title","documentation":""},{"id":33,"name":"Body","documentation":""},{"id":34,"name":"Button","documentation":""},{"id":35,"name":"Tag","documentation":""},{"id":36,"name":"Headline","documentation":""}],"variants":[{"name":"default","values":[{"textStyle":{"fontName":{"family":"Space Grotesk"},"fontSize":60}},{"textStyle":{"fontName":{"family":"DM Sans"},"fontSize":24}},{"textStyle":{"fontName":{"family":"Space Grotesk"},"fontSize":18}},{"textStyle":{"fontName":{"family":"Space Grotesk"},"fontSize":12}},{"textStyle":{"fontName":{"family":"DM Sans"},"fontSize":24}}]}]}],"components":[{"name":"OverdueCard3","documentation":"https://www.figma.com/file/null","variants":[{"id":0,"name":"OverdueCard3","root":{"frame":{"id":"56:79878","name":"OverdueCard3","visible":true,"x":74,"y":88,"width":337,"height":111,"rotation":0,"children":[{"text":{"id":"56:79853","name":"Content","visible":true,"x":18,"y":18,"width":301,"height":31,"rotation":0,"fills":[{"solid":{"color":{"constant":{"value":{"color":{"red":0.8470588326454163,"green":0.310065358877182,"blue":0.22745098173618317,"alpha":1}}}}},"visible":true,"opacity":1,"blendMode":"BLEND_MODE_NORMAL"}],"characters":{"constant":{"value":{"stringValue":"Content"}}},"style":{"fontName":{"family":"DM Sans","style":"FONT_STYLE_REGULAR","weight":500},"fontSize":23.578947067260742}}},{"frame":{"id":"56:79854","name":"Actions","visible":true,"x":18,"y":57,"width":301,"height":36,"rotation":0,"layout":{"autoLayout":{"isVertical":false,"padding":{"left":0,"top":0,"right":0,"bottom":0},"itemSpacing":150}},"clipContent":false,"children":[{"frame":{"id":"56:79855","name":"Tag","visible":true,"x":0,"y":10,"width":65,"height":26,"rotation":0,"layout":{"autoLayout":{"isVertical":false,"padding":{"left":8,"top":4,"right":8,"bottom":4},"itemSpacing":8}},"fills":[{"solid":{"color":{"constant":{"value":{"color":{"red":0.8470588326454163,"green":0.310065358877182,"blue":0.22745098173618317,"alpha":1}}}}},"visible":true,"opacity":0.12999999523162842,"blendMode":"BLEND_MODE_NORMAL"}],"clipContent":true,"children":[{"text":{"id":"56:79856","name":"OVERDUE","visible":true,"x":8,"y":5.5,"width":49,"height":15,"rotation":0,"fills":[{"solid":{"color":{"constant":{"value":{"color":{"red":0.8470588326454163,"green":0.310065358877182,"blue":0.22745098173618317,"alpha":1}}}}},"visible":true,"opacity":1,"blendMode":"BLEND_MODE_NORMAL"}],"characters":{"constant":{"value":{"stringValue":"OVERDUE"}}},"style":{"fontName":{"family":"Space Grotesk","style":"FONT_STYLE_REGULAR","weight":700},"fontSize":12.132004737854004}}}]}},{"frame":{"id":"56:79857","name":"Frame 4","visible":true,"x":225,"y":0,"width":76,"height":36,"rotation":0,"layout":{"autoLayout":{"isVertical":false,"padding":{"left":16,"top":6,"right":16,"bottom":6},"itemSpacing":10}},"fills":[{"solid":{"color":{"constant":{"value":{"color":{"red":0.8470588326454163,"green":0.310065358877182,"blue":0.22745098173618317,"alpha":1}}}}},"visible":true,"opacity":1,"blendMode":"BLEND_MODE_NORMAL"}],"clipContent":true,"children":[{"text":{"id":"56:79858","name":"DONE","visible":true,"x":16,"y":6.5,"width":44,"height":23,"rotation":0,"fills":[{"solid":{"color":{"constant":{"value":{"color":{"red":1,"green":1,"blue":1,"alpha":1}}}}},"visible":true,"opacity":1,"blendMode":"BLEND_MODE_NORMAL"}],"characters":{"constant":{"value":{"stringValue":"DONE"}}},"style":{"fontName":{"family":"Space Grotesk","style":"FONT_STYLE_REGULAR","weight":700},"fontSize":18.07421112060547}}}]}}]}}]}}}]}]}
''';

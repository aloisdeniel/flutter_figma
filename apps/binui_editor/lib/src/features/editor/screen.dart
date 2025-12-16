import 'dart:convert';

import 'package:binui/binui.dart' as b;
import 'package:flutter/material.dart';

import 'json_editor.dart';
import 'preview_panel.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  final TextEditingController _jsonController = TextEditingController();
  b.Library? _library;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _jsonController.text = _sampleJson;
    _parseJson(_sampleJson);
  }

  @override
  void dispose() {
    _jsonController.dispose();
    super.dispose();
  }

  void _parseJson(String json) {
    if (json.trim().isEmpty) {
      setState(() {
        _library = null;
        _errorMessage = null;
      });
      return;
    }

    try {
      final library = b.Library();
      library.mergeFromProto3Json(jsonDecode(json));
      setState(() {
        _library = library;
        _errorMessage = null;
      });
    } catch (e) {
      setState(() {
        _library = null;
        _errorMessage = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Binui Editor'),
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reparse JSON',
            onPressed: () => _parseJson(_jsonController.text),
          ),
          IconButton(
            icon: const Icon(Icons.clear),
            tooltip: 'Clear',
            onPressed: () {
              _jsonController.clear();
              setState(() {
                _library = null;
                _errorMessage = null;
              });
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
              ),
              child: JsonEditor(
                controller: _jsonController,
                onChanged: _parseJson,
                errorMessage: _errorMessage,
              ),
            ),
          ),
          Expanded(
            child: _library != null
                ? PreviewPanel(library: _library!)
                : _EmptyPreview(hasError: _errorMessage != null),
          ),
        ],
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
{"name":"Slides: Flutter vs Figma","documentation":"Imported from Figma file: unknown","variables":[{"id":1,"name":"Demo-Tokens","variables":[{"id":2,"name":"Red/LightBackground","documentation":""},{"id":3,"name":"Blue/Foreground","documentation":""},{"id":4,"name":"Orange/LightBackground","documentation":""},{"id":5,"name":"Orange/Foreground","documentation":""},{"id":6,"name":"Blue/LightBackground","documentation":""},{"id":7,"name":"Blue/LightBackgroundPressed","documentation":""},{"id":8,"name":"Blue/OverlayBackground","documentation":""},{"id":9,"name":"Blue/OverlayForeground","documentation":""},{"id":10,"name":"Blue/Background","documentation":""},{"id":11,"name":"Blue/Accent","documentation":""},{"id":12,"name":"Blue/BackgroundAccent","documentation":""},{"id":13,"name":"Blue/BackgroundAccentTransparent","documentation":""},{"id":14,"name":"Blue/BackgroundTransparent","documentation":""},{"id":15,"name":"Red/OverlayForeground","documentation":""},{"id":16,"name":"Red/Background","documentation":""},{"id":17,"name":"Red/Accent","documentation":""}],"variants":[{"id":26,"name":"Light","values":[{"color":{"red":0.8470588326454163,"green":0.30980393290519714,"blue":0.22745098173618317,"alpha":0.15000000596046448,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.003921568859368563,"green":0.003921568859368563,"blue":0.003921568859368563,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":0.8745098114013672,"blue":0.7803921699523926,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.5686274766921997,"green":0.33725491166114807,"blue":0.25882354378700256,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9411764740943909,"green":0.9490196108818054,"blue":0.9921568632125854,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.7543757557868958,"green":0.7921642065048218,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.29411765933036804,"green":0.3843137323856354,"blue":0.886274516582489,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":1,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9686274528503418,"green":0.9686274528503418,"blue":0.9686274528503418,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.23137255012989044,"green":0.3294117748737335,"blue":0.8745098114013672,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.23137255012989044,"green":0.3294117748737335,"blue":0.8745098114013672,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.23137255012989044,"green":0.3294117748737335,"blue":0.8745098114013672,"alpha":0,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9686274528503418,"green":0.9686274528503418,"blue":0.9686274528503418,"alpha":0,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":1,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":0.95686274766922,"blue":0.9529411792755127,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.8470588326454163,"green":0.30980393290519714,"blue":0.22745098173618317,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}}]},{"id":27,"name":"Dark","values":[{"color":{"red":0.8470588326454163,"green":0.30980393290519714,"blue":0.22745098173618317,"alpha":0.15000000596046448,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":1,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.1359349489212036,"green":0.05590805411338806,"blue":0.17302058637142181,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.6647964119911194,"green":0.3579654395580292,"blue":0.8424354195594788,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9762036204338074,"green":0.9790374040603638,"blue":0.9963942170143127,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.7529411911964417,"green":0.7921568751335144,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.1473540961742401,"green":0.20595701038837433,"blue":0.46967023611068726,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":1,"blue":1,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.2356289178133011,"green":0.27579379081726074,"blue":0.521803617477417,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.23137255012989044,"green":0.3294117748737335,"blue":0.8745098114013672,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.09942083805799484,"green":0.11253262311220169,"blue":0.18543419241905212,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.09803921729326248,"green":0.11372549086809158,"blue":0.18431372940540314,"alpha":0,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.9686274528503418,"green":0.9686274528503418,"blue":0.9686274528503418,"alpha":0,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.7370793223381042,"green":0.21790045499801636,"blue":0.17463552951812744,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":0.22203651070594788,"green":0.07200472801923752,"blue":0.05836547911167145,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}},{"color":{"red":1,"green":0.6702659726142883,"blue":0.6197227835655212,"alpha":1,"colorSpace":"COLOR_SPACE_DISPLAY_P3"}}]}]},{"id":18,"name":"Demo-Theme","variables":[{"id":19,"name":"Background","documentation":""},{"id":20,"name":"Foreground","documentation":""},{"id":21,"name":"Button/Background","documentation":""},{"id":22,"name":"Button/Foreground","documentation":""},{"id":23,"name":"Tag/Background","documentation":""},{"id":24,"name":"Tag/Foreground","documentation":""},{"id":25,"name":"BackgroundTransparent","documentation":""}],"variants":[{"id":28,"name":"White","values":[{"alias":{"variable":{"collectionId":1,"variableId":10}}},{"alias":{"variable":{"collectionId":1,"variableId":3}}},{"alias":{"variable":{"collectionId":1,"variableId":6}}},{"alias":{"variable":{"collectionId":1,"variableId":11}}},{"alias":{"variable":{"collectionId":1,"variableId":6}}},{"alias":{"variable":{"collectionId":1,"variableId":11}}},{"alias":{"variable":{"collectionId":1,"variableId":14}}}]},{"id":29,"name":"Red","values":[{"alias":{"variable":{"collectionId":1,"variableId":16}}},{"alias":{"variable":{"collectionId":1,"variableId":17}}},{"alias":{"variable":{"collectionId":1,"variableId":17}}},{"alias":{"variable":{"collectionId":1,"variableId":15}}},{"alias":{"variable":{"collectionId":1,"variableId":2}}},{"alias":{"variable":{"collectionId":1,"variableId":17}}},{"alias":{"variable":{"collectionId":1,"variableId":16}}}]},{"id":30,"name":"Orange","values":[{"alias":{"variable":{"collectionId":1,"variableId":4}}},{"alias":{"variable":{"collectionId":1,"variableId":5}}},{"alias":{"variable":{"collectionId":1,"variableId":4}}},{"alias":{"variable":{"collectionId":1,"variableId":5}}},{"alias":{"variable":{"collectionId":1,"variableId":4}}},{"alias":{"variable":{"collectionId":1,"variableId":5}}},{"alias":{"variable":{"collectionId":1,"variableId":4}}}]},{"id":31,"name":"Blue","values":[{"alias":{"variable":{"collectionId":1,"variableId":12}}},{"alias":{"variable":{"collectionId":1,"variableId":9}}},{"alias":{"variable":{"collectionId":1,"variableId":8}}},{"alias":{"variable":{"collectionId":1,"variableId":9}}},{"alias":{"variable":{"collectionId":1,"variableId":8}}},{"alias":{"variable":{"collectionId":1,"variableId":9}}},{"alias":{"variable":{"collectionId":1,"variableId":13}}}]}]},{"id":37,"name":"Styles","variables":[{"id":32,"name":"Title","documentation":""},{"id":33,"name":"Body","documentation":""},{"id":34,"name":"Button","documentation":""},{"id":35,"name":"Tag","documentation":""},{"id":36,"name":"Headline","documentation":""}],"variants":[{"name":"default","values":[{"textStyle":{"fontName":{"family":"Space Grotesk"},"fontSize":60}},{"textStyle":{"fontName":{"family":"DM Sans"},"fontSize":24}},{"textStyle":{"fontName":{"family":"Space Grotesk"},"fontSize":18}},{"textStyle":{"fontName":{"family":"Space Grotesk"},"fontSize":12}},{"textStyle":{"fontName":{"family":"DM Sans"},"fontSize":24}}]}]}],"components":[{"name":"Logo","documentation":"https://www.figma.com/file/null","properties":[{"name":"Logo","defaultValue":{"stringValue":"figma"}}],"variantDefinitions":[{"name":"Logo","values":[{"id":0,"name":"figma"},{"id":1,"name":"flutter"}]}]},{"name":"Card4","documentation":"https://www.figma.com/file/null","properties":[{"name":"content#56:9","defaultValue":{"stringValue":"Content"}},{"name":"status","defaultValue":{"stringValue":"Overdue"}}],"variantDefinitions":[{"name":"status","values":[{"id":0,"name":"Overdue"},{"id":1,"name":"Undone"}]}]},{"name":"ActionButton","documentation":"https://www.figma.com/file/null","properties":[{"name":"style","defaultValue":{"stringValue":"Header"}}],"variantDefinitions":[{"name":"style","values":[{"id":0,"name":"Header"},{"id":1,"name":"Primary"},{"id":2,"name":"Secondary"}]}]},{"name":"Icon","documentation":"https://www.figma.com/file/null","properties":[{"name":"initials#56:10","defaultValue":{"stringValue":"A"}},{"name":"icon","defaultValue":{"stringValue":"Sticky"}}],"variantDefinitions":[{"name":"icon","values":[{"id":0,"name":"Sticky"},{"id":1,"name":"Timer"},{"id":2,"name":"Variant3"},{"id":3,"name":"Initials"}]}]},{"name":"Icon5","documentation":"https://www.figma.com/file/null","properties":[{"name":"initials#56:10","defaultValue":{"stringValue":"A"}},{"name":"icon","defaultValue":{"stringValue":"Sticky"}}],"variantDefinitions":[{"name":"icon","values":[{"id":0,"name":"Sticky"},{"id":1,"name":"Timer"},{"id":2,"name":"Notif"},{"id":3,"name":"Initials"}]}]},{"name":"Button6","documentation":"https://www.figma.com/file/null","properties":[{"name":"title#67:0","defaultValue":{"stringValue":"BUTTON"}},{"name":"State","defaultValue":{"stringValue":"Default"}}],"variantDefinitions":[{"name":"State","values":[{"id":0,"name":"Default"},{"id":1,"name":"Pressed"}]}]},{"name":"ActionButton6","documentation":"https://www.figma.com/file/null","properties":[{"name":"Property 1","defaultValue":{"stringValue":"Default"}}],"variantDefinitions":[{"name":"Property 1","values":[{"id":0,"name":"Default"}]}]}]}
''';

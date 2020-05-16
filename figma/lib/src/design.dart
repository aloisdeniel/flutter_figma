import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/api/api.dart';
import 'package:flutter_figma/src/figma.dart';

class FigmaDesignFile extends StatefulWidget {
  final String fileId;
  final Widget child;

  const FigmaDesignFile({
    @required this.fileId,
    @required this.child,
  });

  static void refresh(BuildContext context) {
    final designState = context.findAncestorStateOfType<_FigmaDesignState>();
    designState.refresh();
  }

  @override
  _FigmaDesignState createState() => _FigmaDesignState();
}

class _FigmaDesignState extends State<FigmaDesignFile> {
  FigmaApiFile file;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      refresh();
    });

    super.initState();
  }

  Future<void> refresh() async {
    final figma = Figma.of(context);
    final newFile = await figma.api.getFile(widget.fileId);
    setState(() {
      file = newFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedDesignState(
      file: file,
      child: widget.child,
    );
  }
}

class _InheritedDesignState extends InheritedWidget {
  final FigmaApiFile file;
  _InheritedDesignState({
    Key key,
    @required this.file,
    @required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(_InheritedDesignState oldWidget) {
    return oldWidget.file != file;
  }
}

class FigmaDesignNode extends StatelessWidget {
  final String id;
  const FigmaDesignNode({
    @required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final designState =
        context.dependOnInheritedWidgetOfExactType<_InheritedDesignState>();
    if (designState.file == null) return CircularProgressIndicator();
    final node = designState.file.findNode(id);
    return node;
  }
}

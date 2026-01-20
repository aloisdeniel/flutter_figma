class ImportContext<TOptions> {
  ImportContext(this.options);

  final identifiers = IdentifierGenerator();
  final boundVariables = <String, BoundVariableInfo>{};
  final TOptions options;
}

class BoundVariableInfo {
  const BoundVariableInfo({
    required this.collectionName,
    required this.variableName,
  });

  final String collectionName;
  final String variableName;
}

class IdentifierGenerator {
  int _last = 0;

  final Map<Object, int> _used = {};

  int get([Object? id]) {
    if (id == null || (id is String && id.isEmpty)) {
      _last += 1;
      return _last;
    }

    if (_used.containsKey(id)) {
      return _used[id]!;
    }

    _last += 1;
    _used[id] = _last;
    return _last;
  }
}

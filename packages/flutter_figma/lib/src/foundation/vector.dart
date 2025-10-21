import 'package:flutter/widgets.dart';

import 'enums.dart';
import 'paint.dart';

class VectorVertex {
  const VectorVertex({
    required this.x,
    required this.y,
    this.strokeCap,
    this.strokeJoin,
    this.cornerRadius,
    this.handleMirroring,
  });

  final double x;
  final double y;
  final StrokeCap? strokeCap;
  final StrokeJoin? strokeJoin;
  final double? cornerRadius;
  final HandleMirroring? handleMirroring;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorVertex &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y &&
          strokeCap == other.strokeCap &&
          strokeJoin == other.strokeJoin &&
          cornerRadius == other.cornerRadius &&
          handleMirroring == other.handleMirroring;

  @override
  int get hashCode =>
      Object.hash(x, y, strokeCap, strokeJoin, cornerRadius, handleMirroring);

  @override
  String toString() =>
      'VectorVertex(x: $x, y: $y, strokeCap: $strokeCap, strokeJoin: $strokeJoin, cornerRadius: $cornerRadius, handleMirroring: $handleMirroring)';
}

class VectorSegment {
  const VectorSegment({
    required this.start,
    required this.end,
    this.tangentStart,
    this.tangentEnd,
  });

  final int start;
  final int end;
  final Offset? tangentStart;
  final Offset? tangentEnd;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorSegment &&
          runtimeType == other.runtimeType &&
          start == other.start &&
          end == other.end &&
          tangentStart == other.tangentStart &&
          tangentEnd == other.tangentEnd;

  @override
  int get hashCode => Object.hash(start, end, tangentStart, tangentEnd);

  @override
  String toString() =>
      'VectorSegment(start: $start, end: $end, tangentStart: $tangentStart, tangentEnd: $tangentEnd)';
}

class VectorRegion {
  const VectorRegion({
    required this.windingRule,
    required this.loops,
    this.fills,
    this.fillStyleId,
  });

  final WindingRule windingRule;
  final List<List<int>> loops;
  final List<FigmaPaint>? fills;
  final String? fillStyleId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorRegion &&
          runtimeType == other.runtimeType &&
          windingRule == other.windingRule &&
          _listEquals(loops, other.loops) &&
          _listEquals(fills, other.fills) &&
          fillStyleId == other.fillStyleId;

  @override
  int get hashCode => Object.hash(
      windingRule,
      Object.hashAll(loops.expand((e) => e)),
      Object.hashAll(fills ?? []),
      fillStyleId);

  @override
  String toString() =>
      'VectorRegion(windingRule: $windingRule, loops: $loops, fills: $fills, fillStyleId: $fillStyleId)';
}

class VectorNetwork {
  const VectorNetwork({
    required this.vertices,
    required this.segments,
    this.regions = const [],
  });

  final List<VectorVertex> vertices;
  final List<VectorSegment> segments;
  final List<VectorRegion> regions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorNetwork &&
          runtimeType == other.runtimeType &&
          _listEquals(vertices, other.vertices) &&
          _listEquals(segments, other.segments) &&
          _listEquals(regions, other.regions);

  @override
  int get hashCode => Object.hash(Object.hashAll(vertices),
      Object.hashAll(segments), Object.hashAll(regions));

  @override
  String toString() =>
      'VectorNetwork(vertices: $vertices, segments: $segments, regions: $regions)';
}

class VectorPath {
  const VectorPath({
    required this.windingRule,
    required this.data,
  });

  final String windingRule;
  final String data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorPath &&
          runtimeType == other.runtimeType &&
          windingRule == other.windingRule &&
          data == other.data;

  @override
  int get hashCode => Object.hash(windingRule, data);

  @override
  String toString() => 'VectorPath(windingRule: $windingRule, data: $data)';
}

bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null && b == null) return true;
  if (a == null || b == null) return false;
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

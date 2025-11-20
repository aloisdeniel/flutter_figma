import 'package:flutter/foundation.dart';
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
          listEquals(loops, other.loops) &&
          listEquals(fills, other.fills) &&
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
          listEquals(vertices, other.vertices) &&
          listEquals(segments, other.segments) &&
          listEquals(regions, other.regions);

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
    required this.path,
  });

  final String windingRule;
  final Path path;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorPath &&
          runtimeType == other.runtimeType &&
          windingRule == other.windingRule &&
          path == other.path;

  @override
  int get hashCode => Object.hash(windingRule, path);

  @override
  String toString() => 'VectorPath(windingRule: $windingRule, path: $path)';
}

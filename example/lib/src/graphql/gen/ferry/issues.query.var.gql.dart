// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_issue_app/src/graphql/gen/ferry/serializers.gql.dart'
    as _i1;

part 'issues.query.var.gql.g.dart';

abstract class GIssuesVars implements Built<GIssuesVars, GIssuesVarsBuilder> {
  GIssuesVars._();

  factory GIssuesVars([Function(GIssuesVarsBuilder b) updates]) = _$GIssuesVars;

  String get owner;
  String get name;
  static Serializer<GIssuesVars> get serializer => _$gIssuesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIssuesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIssuesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIssuesVars.serializer,
        json,
      );
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_issue_app/src/graphql/gen/ferry/serializers.gql.dart'
    as _i1;

part 'new_issue.mutation.var.gql.g.dart';

abstract class GNewIssueVars
    implements Built<GNewIssueVars, GNewIssueVarsBuilder> {
  GNewIssueVars._();

  factory GNewIssueVars([Function(GNewIssueVarsBuilder b) updates]) =
      _$GNewIssueVars;

  String get repositoryId;
  String get title;
  String? get body;
  static Serializer<GNewIssueVars> get serializer => _$gNewIssueVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewIssueVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewIssueVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewIssueVars.serializer,
        json,
      );
}

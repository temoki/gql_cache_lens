// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_issue_app/src/graphql/gen/ferry/serializers.gql.dart'
    as _i1;

part 'new_issue.mutation.data.gql.g.dart';

abstract class GNewIssueData
    implements Built<GNewIssueData, GNewIssueDataBuilder> {
  GNewIssueData._();

  factory GNewIssueData([Function(GNewIssueDataBuilder b) updates]) =
      _$GNewIssueData;

  static void _initializeBuilder(GNewIssueDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNewIssueData_createIssue? get createIssue;
  static Serializer<GNewIssueData> get serializer => _$gNewIssueDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewIssueData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewIssueData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewIssueData.serializer,
        json,
      );
}

abstract class GNewIssueData_createIssue
    implements
        Built<GNewIssueData_createIssue, GNewIssueData_createIssueBuilder> {
  GNewIssueData_createIssue._();

  factory GNewIssueData_createIssue(
          [Function(GNewIssueData_createIssueBuilder b) updates]) =
      _$GNewIssueData_createIssue;

  static void _initializeBuilder(GNewIssueData_createIssueBuilder b) =>
      b..G__typename = 'CreateIssuePayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNewIssueData_createIssue_issue? get issue;
  static Serializer<GNewIssueData_createIssue> get serializer =>
      _$gNewIssueDataCreateIssueSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewIssueData_createIssue.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewIssueData_createIssue? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewIssueData_createIssue.serializer,
        json,
      );
}

abstract class GNewIssueData_createIssue_issue
    implements
        Built<GNewIssueData_createIssue_issue,
            GNewIssueData_createIssue_issueBuilder> {
  GNewIssueData_createIssue_issue._();

  factory GNewIssueData_createIssue_issue(
          [Function(GNewIssueData_createIssue_issueBuilder b) updates]) =
      _$GNewIssueData_createIssue_issue;

  static void _initializeBuilder(GNewIssueData_createIssue_issueBuilder b) =>
      b..G__typename = 'Issue';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GNewIssueData_createIssue_issue> get serializer =>
      _$gNewIssueDataCreateIssueIssueSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewIssueData_createIssue_issue.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewIssueData_createIssue_issue? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewIssueData_createIssue_issue.serializer,
        json,
      );
}

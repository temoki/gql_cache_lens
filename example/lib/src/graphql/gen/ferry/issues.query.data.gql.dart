// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_issue_app/src/graphql/gen/ferry/schema.schema.gql.dart'
    as _i2;
import 'package:github_issue_app/src/graphql/gen/ferry/serializers.gql.dart'
    as _i1;

part 'issues.query.data.gql.g.dart';

abstract class GIssuesData implements Built<GIssuesData, GIssuesDataBuilder> {
  GIssuesData._();

  factory GIssuesData([Function(GIssuesDataBuilder b) updates]) = _$GIssuesData;

  static void _initializeBuilder(GIssuesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GIssuesData_repository? get repository;
  static Serializer<GIssuesData> get serializer => _$gIssuesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIssuesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIssuesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIssuesData.serializer,
        json,
      );
}

abstract class GIssuesData_repository
    implements Built<GIssuesData_repository, GIssuesData_repositoryBuilder> {
  GIssuesData_repository._();

  factory GIssuesData_repository(
          [Function(GIssuesData_repositoryBuilder b) updates]) =
      _$GIssuesData_repository;

  static void _initializeBuilder(GIssuesData_repositoryBuilder b) =>
      b..G__typename = 'Repository';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GIssuesData_repository_issues get issues;
  static Serializer<GIssuesData_repository> get serializer =>
      _$gIssuesDataRepositorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIssuesData_repository.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIssuesData_repository? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIssuesData_repository.serializer,
        json,
      );
}

abstract class GIssuesData_repository_issues
    implements
        Built<GIssuesData_repository_issues,
            GIssuesData_repository_issuesBuilder> {
  GIssuesData_repository_issues._();

  factory GIssuesData_repository_issues(
          [Function(GIssuesData_repository_issuesBuilder b) updates]) =
      _$GIssuesData_repository_issues;

  static void _initializeBuilder(GIssuesData_repository_issuesBuilder b) =>
      b..G__typename = 'IssueConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GIssuesData_repository_issues_edges?>? get edges;
  static Serializer<GIssuesData_repository_issues> get serializer =>
      _$gIssuesDataRepositoryIssuesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIssuesData_repository_issues.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIssuesData_repository_issues? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIssuesData_repository_issues.serializer,
        json,
      );
}

abstract class GIssuesData_repository_issues_edges
    implements
        Built<GIssuesData_repository_issues_edges,
            GIssuesData_repository_issues_edgesBuilder> {
  GIssuesData_repository_issues_edges._();

  factory GIssuesData_repository_issues_edges(
          [Function(GIssuesData_repository_issues_edgesBuilder b) updates]) =
      _$GIssuesData_repository_issues_edges;

  static void _initializeBuilder(
          GIssuesData_repository_issues_edgesBuilder b) =>
      b..G__typename = 'IssueEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GIssuesData_repository_issues_edges_node? get node;
  static Serializer<GIssuesData_repository_issues_edges> get serializer =>
      _$gIssuesDataRepositoryIssuesEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIssuesData_repository_issues_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIssuesData_repository_issues_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIssuesData_repository_issues_edges.serializer,
        json,
      );
}

abstract class GIssuesData_repository_issues_edges_node
    implements
        Built<GIssuesData_repository_issues_edges_node,
            GIssuesData_repository_issues_edges_nodeBuilder> {
  GIssuesData_repository_issues_edges_node._();

  factory GIssuesData_repository_issues_edges_node(
      [Function(GIssuesData_repository_issues_edges_nodeBuilder b)
          updates]) = _$GIssuesData_repository_issues_edges_node;

  static void _initializeBuilder(
          GIssuesData_repository_issues_edges_nodeBuilder b) =>
      b..G__typename = 'Issue';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int get number;
  String get title;
  _i2.GDateTime get createdAt;
  GIssuesData_repository_issues_edges_node_author? get author;
  static Serializer<GIssuesData_repository_issues_edges_node> get serializer =>
      _$gIssuesDataRepositoryIssuesEdgesNodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIssuesData_repository_issues_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIssuesData_repository_issues_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIssuesData_repository_issues_edges_node.serializer,
        json,
      );
}

abstract class GIssuesData_repository_issues_edges_node_author
    implements
        Built<GIssuesData_repository_issues_edges_node_author,
            GIssuesData_repository_issues_edges_node_authorBuilder> {
  GIssuesData_repository_issues_edges_node_author._();

  factory GIssuesData_repository_issues_edges_node_author(
      [Function(GIssuesData_repository_issues_edges_node_authorBuilder b)
          updates]) = _$GIssuesData_repository_issues_edges_node_author;

  static void _initializeBuilder(
          GIssuesData_repository_issues_edges_node_authorBuilder b) =>
      b..G__typename = 'Actor';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get login;
  static Serializer<GIssuesData_repository_issues_edges_node_author>
      get serializer => _$gIssuesDataRepositoryIssuesEdgesNodeAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIssuesData_repository_issues_edges_node_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIssuesData_repository_issues_edges_node_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIssuesData_repository_issues_edges_node_author.serializer,
        json,
      );
}

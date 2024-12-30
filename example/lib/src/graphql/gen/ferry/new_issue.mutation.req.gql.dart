// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:github_issue_app/src/graphql/gen/ferry/new_issue.mutation.ast.gql.dart'
    as _i5;
import 'package:github_issue_app/src/graphql/gen/ferry/new_issue.mutation.data.gql.dart'
    as _i2;
import 'package:github_issue_app/src/graphql/gen/ferry/new_issue.mutation.var.gql.dart'
    as _i3;
import 'package:github_issue_app/src/graphql/gen/ferry/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'new_issue.mutation.req.gql.g.dart';

abstract class GNewIssueReq
    implements
        Built<GNewIssueReq, GNewIssueReqBuilder>,
        _i1.OperationRequest<_i2.GNewIssueData, _i3.GNewIssueVars> {
  GNewIssueReq._();

  factory GNewIssueReq([Function(GNewIssueReqBuilder b) updates]) =
      _$GNewIssueReq;

  static void _initializeBuilder(GNewIssueReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'NewIssue',
    )
    ..executeOnListen = true;

  @override
  _i3.GNewIssueVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GNewIssueData? Function(
    _i2.GNewIssueData?,
    _i2.GNewIssueData?,
  )? get updateResult;
  @override
  _i2.GNewIssueData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GNewIssueData? parseData(Map<String, dynamic> json) =>
      _i2.GNewIssueData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GNewIssueData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GNewIssueData, _i3.GNewIssueVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GNewIssueReq> get serializer => _$gNewIssueReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GNewIssueReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewIssueReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GNewIssueReq.serializer,
        json,
      );
}

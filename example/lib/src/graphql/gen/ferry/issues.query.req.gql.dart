// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:github_issue_app/src/graphql/gen/ferry/issues.query.ast.gql.dart'
    as _i5;
import 'package:github_issue_app/src/graphql/gen/ferry/issues.query.data.gql.dart'
    as _i2;
import 'package:github_issue_app/src/graphql/gen/ferry/issues.query.var.gql.dart'
    as _i3;
import 'package:github_issue_app/src/graphql/gen/ferry/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'issues.query.req.gql.g.dart';

abstract class GIssuesReq
    implements
        Built<GIssuesReq, GIssuesReqBuilder>,
        _i1.OperationRequest<_i2.GIssuesData, _i3.GIssuesVars> {
  GIssuesReq._();

  factory GIssuesReq([Function(GIssuesReqBuilder b) updates]) = _$GIssuesReq;

  static void _initializeBuilder(GIssuesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Issues',
    )
    ..executeOnListen = true;

  @override
  _i3.GIssuesVars get vars;
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
  _i2.GIssuesData? Function(
    _i2.GIssuesData?,
    _i2.GIssuesData?,
  )? get updateResult;
  @override
  _i2.GIssuesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GIssuesData? parseData(Map<String, dynamic> json) =>
      _i2.GIssuesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GIssuesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GIssuesData, _i3.GIssuesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GIssuesReq> get serializer => _$gIssuesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GIssuesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIssuesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GIssuesReq.serializer,
        json,
      );
}

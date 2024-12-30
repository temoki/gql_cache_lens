import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$NewIssue {
  factory Variables$Mutation$NewIssue({
    required String repositoryId,
    required String title,
    String? body,
  }) =>
      Variables$Mutation$NewIssue._({
        r'repositoryId': repositoryId,
        r'title': title,
        if (body != null) r'body': body,
      });

  Variables$Mutation$NewIssue._(this._$data);

  factory Variables$Mutation$NewIssue.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$repositoryId = data['repositoryId'];
    result$data['repositoryId'] = (l$repositoryId as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('body')) {
      final l$body = data['body'];
      result$data['body'] = (l$body as String?);
    }
    return Variables$Mutation$NewIssue._(result$data);
  }

  Map<String, dynamic> _$data;

  String get repositoryId => (_$data['repositoryId'] as String);

  String get title => (_$data['title'] as String);

  String? get body => (_$data['body'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$repositoryId = repositoryId;
    result$data['repositoryId'] = l$repositoryId;
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('body')) {
      final l$body = body;
      result$data['body'] = l$body;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$NewIssue<Variables$Mutation$NewIssue>
      get copyWith => CopyWith$Variables$Mutation$NewIssue(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$NewIssue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$repositoryId = repositoryId;
    final lOther$repositoryId = other.repositoryId;
    if (l$repositoryId != lOther$repositoryId) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (_$data.containsKey('body') != other._$data.containsKey('body')) {
      return false;
    }
    if (l$body != lOther$body) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$repositoryId = repositoryId;
    final l$title = title;
    final l$body = body;
    return Object.hashAll([
      l$repositoryId,
      l$title,
      _$data.containsKey('body') ? l$body : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$NewIssue<TRes> {
  factory CopyWith$Variables$Mutation$NewIssue(
    Variables$Mutation$NewIssue instance,
    TRes Function(Variables$Mutation$NewIssue) then,
  ) = _CopyWithImpl$Variables$Mutation$NewIssue;

  factory CopyWith$Variables$Mutation$NewIssue.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$NewIssue;

  TRes call({
    String? repositoryId,
    String? title,
    String? body,
  });
}

class _CopyWithImpl$Variables$Mutation$NewIssue<TRes>
    implements CopyWith$Variables$Mutation$NewIssue<TRes> {
  _CopyWithImpl$Variables$Mutation$NewIssue(
    this._instance,
    this._then,
  );

  final Variables$Mutation$NewIssue _instance;

  final TRes Function(Variables$Mutation$NewIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? repositoryId = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
  }) =>
      _then(Variables$Mutation$NewIssue._({
        ..._instance._$data,
        if (repositoryId != _undefined && repositoryId != null)
          'repositoryId': (repositoryId as String),
        if (title != _undefined && title != null) 'title': (title as String),
        if (body != _undefined) 'body': (body as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$NewIssue<TRes>
    implements CopyWith$Variables$Mutation$NewIssue<TRes> {
  _CopyWithStubImpl$Variables$Mutation$NewIssue(this._res);

  TRes _res;

  call({
    String? repositoryId,
    String? title,
    String? body,
  }) =>
      _res;
}

class Mutation$NewIssue {
  Mutation$NewIssue({
    this.createIssue,
    this.$__typename = 'Mutation',
  });

  factory Mutation$NewIssue.fromJson(Map<String, dynamic> json) {
    final l$createIssue = json['createIssue'];
    final l$$__typename = json['__typename'];
    return Mutation$NewIssue(
      createIssue: l$createIssue == null
          ? null
          : Mutation$NewIssue$createIssue.fromJson(
              (l$createIssue as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$NewIssue$createIssue? createIssue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createIssue = createIssue;
    _resultData['createIssue'] = l$createIssue?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createIssue = createIssue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createIssue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$NewIssue || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createIssue = createIssue;
    final lOther$createIssue = other.createIssue;
    if (l$createIssue != lOther$createIssue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$NewIssue on Mutation$NewIssue {
  CopyWith$Mutation$NewIssue<Mutation$NewIssue> get copyWith =>
      CopyWith$Mutation$NewIssue(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$NewIssue<TRes> {
  factory CopyWith$Mutation$NewIssue(
    Mutation$NewIssue instance,
    TRes Function(Mutation$NewIssue) then,
  ) = _CopyWithImpl$Mutation$NewIssue;

  factory CopyWith$Mutation$NewIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$NewIssue;

  TRes call({
    Mutation$NewIssue$createIssue? createIssue,
    String? $__typename,
  });
  CopyWith$Mutation$NewIssue$createIssue<TRes> get createIssue;
}

class _CopyWithImpl$Mutation$NewIssue<TRes>
    implements CopyWith$Mutation$NewIssue<TRes> {
  _CopyWithImpl$Mutation$NewIssue(
    this._instance,
    this._then,
  );

  final Mutation$NewIssue _instance;

  final TRes Function(Mutation$NewIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createIssue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$NewIssue(
        createIssue: createIssue == _undefined
            ? _instance.createIssue
            : (createIssue as Mutation$NewIssue$createIssue?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$NewIssue$createIssue<TRes> get createIssue {
    final local$createIssue = _instance.createIssue;
    return local$createIssue == null
        ? CopyWith$Mutation$NewIssue$createIssue.stub(_then(_instance))
        : CopyWith$Mutation$NewIssue$createIssue(
            local$createIssue, (e) => call(createIssue: e));
  }
}

class _CopyWithStubImpl$Mutation$NewIssue<TRes>
    implements CopyWith$Mutation$NewIssue<TRes> {
  _CopyWithStubImpl$Mutation$NewIssue(this._res);

  TRes _res;

  call({
    Mutation$NewIssue$createIssue? createIssue,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$NewIssue$createIssue<TRes> get createIssue =>
      CopyWith$Mutation$NewIssue$createIssue.stub(_res);
}

const documentNodeMutationNewIssue = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'NewIssue'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'repositoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'body')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createIssue'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'repositoryId'),
                value: VariableNode(name: NameNode(value: 'repositoryId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'title'),
                value: VariableNode(name: NameNode(value: 'title')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'body'),
                value: VariableNode(name: NameNode(value: 'body')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'issue'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$NewIssue _parserFn$Mutation$NewIssue(Map<String, dynamic> data) =>
    Mutation$NewIssue.fromJson(data);
typedef OnMutationCompleted$Mutation$NewIssue = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$NewIssue?,
);

class Options$Mutation$NewIssue
    extends graphql.MutationOptions<Mutation$NewIssue> {
  Options$Mutation$NewIssue({
    String? operationName,
    required Variables$Mutation$NewIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$NewIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$NewIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$NewIssue>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$NewIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationNewIssue,
          parserFn: _parserFn$Mutation$NewIssue,
        );

  final OnMutationCompleted$Mutation$NewIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$NewIssue
    extends graphql.WatchQueryOptions<Mutation$NewIssue> {
  WatchOptions$Mutation$NewIssue({
    String? operationName,
    required Variables$Mutation$NewIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$NewIssue? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationNewIssue,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$NewIssue,
        );
}

extension ClientExtension$Mutation$NewIssue on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$NewIssue>> mutate$NewIssue(
          Options$Mutation$NewIssue options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$NewIssue> watchMutation$NewIssue(
          WatchOptions$Mutation$NewIssue options) =>
      this.watchMutation(options);
}

class Mutation$NewIssue$HookResult {
  Mutation$NewIssue$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$NewIssue runMutation;

  final graphql.QueryResult<Mutation$NewIssue> result;
}

Mutation$NewIssue$HookResult useMutation$NewIssue(
    [WidgetOptions$Mutation$NewIssue? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$NewIssue());
  return Mutation$NewIssue$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$NewIssue> useWatchMutation$NewIssue(
        WatchOptions$Mutation$NewIssue options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$NewIssue
    extends graphql.MutationOptions<Mutation$NewIssue> {
  WidgetOptions$Mutation$NewIssue({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$NewIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$NewIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$NewIssue>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$NewIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationNewIssue,
          parserFn: _parserFn$Mutation$NewIssue,
        );

  final OnMutationCompleted$Mutation$NewIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$NewIssue
    = graphql.MultiSourceResult<Mutation$NewIssue> Function(
  Variables$Mutation$NewIssue, {
  Object? optimisticResult,
  Mutation$NewIssue? typedOptimisticResult,
});
typedef Builder$Mutation$NewIssue = widgets.Widget Function(
  RunMutation$Mutation$NewIssue,
  graphql.QueryResult<Mutation$NewIssue>?,
);

class Mutation$NewIssue$Widget
    extends graphql_flutter.Mutation<Mutation$NewIssue> {
  Mutation$NewIssue$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$NewIssue? options,
    required Builder$Mutation$NewIssue builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$NewIssue(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$NewIssue$createIssue {
  Mutation$NewIssue$createIssue({
    this.issue,
    this.$__typename = 'CreateIssuePayload',
  });

  factory Mutation$NewIssue$createIssue.fromJson(Map<String, dynamic> json) {
    final l$issue = json['issue'];
    final l$$__typename = json['__typename'];
    return Mutation$NewIssue$createIssue(
      issue: l$issue == null
          ? null
          : Mutation$NewIssue$createIssue$issue.fromJson(
              (l$issue as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$NewIssue$createIssue$issue? issue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$issue = issue;
    _resultData['issue'] = l$issue?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$issue = issue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$issue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$NewIssue$createIssue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$issue = issue;
    final lOther$issue = other.issue;
    if (l$issue != lOther$issue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$NewIssue$createIssue
    on Mutation$NewIssue$createIssue {
  CopyWith$Mutation$NewIssue$createIssue<Mutation$NewIssue$createIssue>
      get copyWith => CopyWith$Mutation$NewIssue$createIssue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$NewIssue$createIssue<TRes> {
  factory CopyWith$Mutation$NewIssue$createIssue(
    Mutation$NewIssue$createIssue instance,
    TRes Function(Mutation$NewIssue$createIssue) then,
  ) = _CopyWithImpl$Mutation$NewIssue$createIssue;

  factory CopyWith$Mutation$NewIssue$createIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$NewIssue$createIssue;

  TRes call({
    Mutation$NewIssue$createIssue$issue? issue,
    String? $__typename,
  });
  CopyWith$Mutation$NewIssue$createIssue$issue<TRes> get issue;
}

class _CopyWithImpl$Mutation$NewIssue$createIssue<TRes>
    implements CopyWith$Mutation$NewIssue$createIssue<TRes> {
  _CopyWithImpl$Mutation$NewIssue$createIssue(
    this._instance,
    this._then,
  );

  final Mutation$NewIssue$createIssue _instance;

  final TRes Function(Mutation$NewIssue$createIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? issue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$NewIssue$createIssue(
        issue: issue == _undefined
            ? _instance.issue
            : (issue as Mutation$NewIssue$createIssue$issue?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$NewIssue$createIssue$issue<TRes> get issue {
    final local$issue = _instance.issue;
    return local$issue == null
        ? CopyWith$Mutation$NewIssue$createIssue$issue.stub(_then(_instance))
        : CopyWith$Mutation$NewIssue$createIssue$issue(
            local$issue, (e) => call(issue: e));
  }
}

class _CopyWithStubImpl$Mutation$NewIssue$createIssue<TRes>
    implements CopyWith$Mutation$NewIssue$createIssue<TRes> {
  _CopyWithStubImpl$Mutation$NewIssue$createIssue(this._res);

  TRes _res;

  call({
    Mutation$NewIssue$createIssue$issue? issue,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$NewIssue$createIssue$issue<TRes> get issue =>
      CopyWith$Mutation$NewIssue$createIssue$issue.stub(_res);
}

class Mutation$NewIssue$createIssue$issue {
  Mutation$NewIssue$createIssue$issue({
    required this.id,
    this.$__typename = 'Issue',
  });

  factory Mutation$NewIssue$createIssue$issue.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$NewIssue$createIssue$issue(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$NewIssue$createIssue$issue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$NewIssue$createIssue$issue
    on Mutation$NewIssue$createIssue$issue {
  CopyWith$Mutation$NewIssue$createIssue$issue<
          Mutation$NewIssue$createIssue$issue>
      get copyWith => CopyWith$Mutation$NewIssue$createIssue$issue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$NewIssue$createIssue$issue<TRes> {
  factory CopyWith$Mutation$NewIssue$createIssue$issue(
    Mutation$NewIssue$createIssue$issue instance,
    TRes Function(Mutation$NewIssue$createIssue$issue) then,
  ) = _CopyWithImpl$Mutation$NewIssue$createIssue$issue;

  factory CopyWith$Mutation$NewIssue$createIssue$issue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$NewIssue$createIssue$issue;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$NewIssue$createIssue$issue<TRes>
    implements CopyWith$Mutation$NewIssue$createIssue$issue<TRes> {
  _CopyWithImpl$Mutation$NewIssue$createIssue$issue(
    this._instance,
    this._then,
  );

  final Mutation$NewIssue$createIssue$issue _instance;

  final TRes Function(Mutation$NewIssue$createIssue$issue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$NewIssue$createIssue$issue(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$NewIssue$createIssue$issue<TRes>
    implements CopyWith$Mutation$NewIssue$createIssue$issue<TRes> {
  _CopyWithStubImpl$Mutation$NewIssue$createIssue$issue(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

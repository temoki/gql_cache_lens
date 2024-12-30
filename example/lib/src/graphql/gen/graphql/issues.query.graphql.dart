import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Issues {
  factory Variables$Query$Issues({
    required String owner,
    required String name,
  }) =>
      Variables$Query$Issues._({
        r'owner': owner,
        r'name': name,
      });

  Variables$Query$Issues._(this._$data);

  factory Variables$Query$Issues.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$owner = data['owner'];
    result$data['owner'] = (l$owner as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$Issues._(result$data);
  }

  Map<String, dynamic> _$data;

  String get owner => (_$data['owner'] as String);

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$owner = owner;
    result$data['owner'] = l$owner;
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$Issues<Variables$Query$Issues> get copyWith =>
      CopyWith$Variables$Query$Issues(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Issues || runtimeType != other.runtimeType) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$owner = owner;
    final l$name = name;
    return Object.hashAll([
      l$owner,
      l$name,
    ]);
  }
}

abstract class CopyWith$Variables$Query$Issues<TRes> {
  factory CopyWith$Variables$Query$Issues(
    Variables$Query$Issues instance,
    TRes Function(Variables$Query$Issues) then,
  ) = _CopyWithImpl$Variables$Query$Issues;

  factory CopyWith$Variables$Query$Issues.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Issues;

  TRes call({
    String? owner,
    String? name,
  });
}

class _CopyWithImpl$Variables$Query$Issues<TRes>
    implements CopyWith$Variables$Query$Issues<TRes> {
  _CopyWithImpl$Variables$Query$Issues(
    this._instance,
    this._then,
  );

  final Variables$Query$Issues _instance;

  final TRes Function(Variables$Query$Issues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? owner = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Variables$Query$Issues._({
        ..._instance._$data,
        if (owner != _undefined && owner != null) 'owner': (owner as String),
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Issues<TRes>
    implements CopyWith$Variables$Query$Issues<TRes> {
  _CopyWithStubImpl$Variables$Query$Issues(this._res);

  TRes _res;

  call({
    String? owner,
    String? name,
  }) =>
      _res;
}

class Query$Issues {
  Query$Issues({
    this.repository,
    this.$__typename = 'Query',
  });

  factory Query$Issues.fromJson(Map<String, dynamic> json) {
    final l$repository = json['repository'];
    final l$$__typename = json['__typename'];
    return Query$Issues(
      repository: l$repository == null
          ? null
          : Query$Issues$repository.fromJson(
              (l$repository as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Issues$repository? repository;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$repository = repository;
    _resultData['repository'] = l$repository?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$repository = repository;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$repository,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues || runtimeType != other.runtimeType) {
      return false;
    }
    final l$repository = repository;
    final lOther$repository = other.repository;
    if (l$repository != lOther$repository) {
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

extension UtilityExtension$Query$Issues on Query$Issues {
  CopyWith$Query$Issues<Query$Issues> get copyWith => CopyWith$Query$Issues(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Issues<TRes> {
  factory CopyWith$Query$Issues(
    Query$Issues instance,
    TRes Function(Query$Issues) then,
  ) = _CopyWithImpl$Query$Issues;

  factory CopyWith$Query$Issues.stub(TRes res) = _CopyWithStubImpl$Query$Issues;

  TRes call({
    Query$Issues$repository? repository,
    String? $__typename,
  });
  CopyWith$Query$Issues$repository<TRes> get repository;
}

class _CopyWithImpl$Query$Issues<TRes> implements CopyWith$Query$Issues<TRes> {
  _CopyWithImpl$Query$Issues(
    this._instance,
    this._then,
  );

  final Query$Issues _instance;

  final TRes Function(Query$Issues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? repository = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues(
        repository: repository == _undefined
            ? _instance.repository
            : (repository as Query$Issues$repository?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Issues$repository<TRes> get repository {
    final local$repository = _instance.repository;
    return local$repository == null
        ? CopyWith$Query$Issues$repository.stub(_then(_instance))
        : CopyWith$Query$Issues$repository(
            local$repository, (e) => call(repository: e));
  }
}

class _CopyWithStubImpl$Query$Issues<TRes>
    implements CopyWith$Query$Issues<TRes> {
  _CopyWithStubImpl$Query$Issues(this._res);

  TRes _res;

  call({
    Query$Issues$repository? repository,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Issues$repository<TRes> get repository =>
      CopyWith$Query$Issues$repository.stub(_res);
}

const documentNodeQueryIssues = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Issues'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'owner')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'repository'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'owner'),
            value: VariableNode(name: NameNode(value: 'owner')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
        ],
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
            name: NameNode(value: 'issues'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '50'),
              ),
              ArgumentNode(
                name: NameNode(value: 'states'),
                value: EnumValueNode(name: NameNode(value: 'OPEN')),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'field'),
                    value: EnumValueNode(name: NameNode(value: 'CREATED_AT')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'direction'),
                    value: EnumValueNode(name: NameNode(value: 'DESC')),
                  ),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'node'),
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
                        name: NameNode(value: 'number'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'author'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'login'),
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
Query$Issues _parserFn$Query$Issues(Map<String, dynamic> data) =>
    Query$Issues.fromJson(data);
typedef OnQueryComplete$Query$Issues = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Issues?,
);

class Options$Query$Issues extends graphql.QueryOptions<Query$Issues> {
  Options$Query$Issues({
    String? operationName,
    required Variables$Query$Issues variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Issues? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Issues? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Issues(data),
                  ),
          onError: onError,
          document: documentNodeQueryIssues,
          parserFn: _parserFn$Query$Issues,
        );

  final OnQueryComplete$Query$Issues? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Issues
    extends graphql.WatchQueryOptions<Query$Issues> {
  WatchOptions$Query$Issues({
    String? operationName,
    required Variables$Query$Issues variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Issues? typedOptimisticResult,
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
          document: documentNodeQueryIssues,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Issues,
        );
}

class FetchMoreOptions$Query$Issues extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Issues({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Issues variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryIssues,
        );
}

extension ClientExtension$Query$Issues on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Issues>> query$Issues(
          Options$Query$Issues options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Issues> watchQuery$Issues(
          WatchOptions$Query$Issues options) =>
      this.watchQuery(options);
  void writeQuery$Issues({
    required Query$Issues data,
    required Variables$Query$Issues variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryIssues),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Issues? readQuery$Issues({
    required Variables$Query$Issues variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryIssues),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Issues.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Issues> useQuery$Issues(
        Options$Query$Issues options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Issues> useWatchQuery$Issues(
        WatchOptions$Query$Issues options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Issues$Widget extends graphql_flutter.Query<Query$Issues> {
  Query$Issues$Widget({
    widgets.Key? key,
    required Options$Query$Issues options,
    required graphql_flutter.QueryBuilder<Query$Issues> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Issues$repository {
  Query$Issues$repository({
    required this.id,
    required this.issues,
    this.$__typename = 'Repository',
  });

  factory Query$Issues$repository.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$issues = json['issues'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository(
      id: (l$id as String),
      issues: Query$Issues$repository$issues.fromJson(
          (l$issues as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$Issues$repository$issues issues;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$issues = issues;
    _resultData['issues'] = l$issues.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$issues = issues;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$issues,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues$repository || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$issues = issues;
    final lOther$issues = other.issues;
    if (l$issues != lOther$issues) {
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

extension UtilityExtension$Query$Issues$repository on Query$Issues$repository {
  CopyWith$Query$Issues$repository<Query$Issues$repository> get copyWith =>
      CopyWith$Query$Issues$repository(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Issues$repository<TRes> {
  factory CopyWith$Query$Issues$repository(
    Query$Issues$repository instance,
    TRes Function(Query$Issues$repository) then,
  ) = _CopyWithImpl$Query$Issues$repository;

  factory CopyWith$Query$Issues$repository.stub(TRes res) =
      _CopyWithStubImpl$Query$Issues$repository;

  TRes call({
    String? id,
    Query$Issues$repository$issues? issues,
    String? $__typename,
  });
  CopyWith$Query$Issues$repository$issues<TRes> get issues;
}

class _CopyWithImpl$Query$Issues$repository<TRes>
    implements CopyWith$Query$Issues$repository<TRes> {
  _CopyWithImpl$Query$Issues$repository(
    this._instance,
    this._then,
  );

  final Query$Issues$repository _instance;

  final TRes Function(Query$Issues$repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? issues = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        issues: issues == _undefined || issues == null
            ? _instance.issues
            : (issues as Query$Issues$repository$issues),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Issues$repository$issues<TRes> get issues {
    final local$issues = _instance.issues;
    return CopyWith$Query$Issues$repository$issues(
        local$issues, (e) => call(issues: e));
  }
}

class _CopyWithStubImpl$Query$Issues$repository<TRes>
    implements CopyWith$Query$Issues$repository<TRes> {
  _CopyWithStubImpl$Query$Issues$repository(this._res);

  TRes _res;

  call({
    String? id,
    Query$Issues$repository$issues? issues,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Issues$repository$issues<TRes> get issues =>
      CopyWith$Query$Issues$repository$issues.stub(_res);
}

class Query$Issues$repository$issues {
  Query$Issues$repository$issues({
    this.edges,
    this.$__typename = 'IssueConnection',
  });

  factory Query$Issues$repository$issues.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository$issues(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Issues$repository$issues$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Issues$repository$issues$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues$repository$issues ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$Issues$repository$issues
    on Query$Issues$repository$issues {
  CopyWith$Query$Issues$repository$issues<Query$Issues$repository$issues>
      get copyWith => CopyWith$Query$Issues$repository$issues(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Issues$repository$issues<TRes> {
  factory CopyWith$Query$Issues$repository$issues(
    Query$Issues$repository$issues instance,
    TRes Function(Query$Issues$repository$issues) then,
  ) = _CopyWithImpl$Query$Issues$repository$issues;

  factory CopyWith$Query$Issues$repository$issues.stub(TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues;

  TRes call({
    List<Query$Issues$repository$issues$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Issues$repository$issues$edges?>? Function(
              Iterable<
                  CopyWith$Query$Issues$repository$issues$edges<
                      Query$Issues$repository$issues$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Issues$repository$issues<TRes>
    implements CopyWith$Query$Issues$repository$issues<TRes> {
  _CopyWithImpl$Query$Issues$repository$issues(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues _instance;

  final TRes Function(Query$Issues$repository$issues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository$issues(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Issues$repository$issues$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Issues$repository$issues$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Issues$repository$issues$edges<
                          Query$Issues$repository$issues$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Issues$repository$issues$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Issues$repository$issues<TRes>
    implements CopyWith$Query$Issues$repository$issues<TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues(this._res);

  TRes _res;

  call({
    List<Query$Issues$repository$issues$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Issues$repository$issues$edges {
  Query$Issues$repository$issues$edges({
    this.node,
    this.$__typename = 'IssueEdge',
  });

  factory Query$Issues$repository$issues$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository$issues$edges(
      node: l$node == null
          ? null
          : Query$Issues$repository$issues$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Issues$repository$issues$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues$repository$issues$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$Issues$repository$issues$edges
    on Query$Issues$repository$issues$edges {
  CopyWith$Query$Issues$repository$issues$edges<
          Query$Issues$repository$issues$edges>
      get copyWith => CopyWith$Query$Issues$repository$issues$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Issues$repository$issues$edges<TRes> {
  factory CopyWith$Query$Issues$repository$issues$edges(
    Query$Issues$repository$issues$edges instance,
    TRes Function(Query$Issues$repository$issues$edges) then,
  ) = _CopyWithImpl$Query$Issues$repository$issues$edges;

  factory CopyWith$Query$Issues$repository$issues$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues$edges;

  TRes call({
    Query$Issues$repository$issues$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Issues$repository$issues$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Issues$repository$issues$edges<TRes>
    implements CopyWith$Query$Issues$repository$issues$edges<TRes> {
  _CopyWithImpl$Query$Issues$repository$issues$edges(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues$edges _instance;

  final TRes Function(Query$Issues$repository$issues$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository$issues$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$Issues$repository$issues$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Issues$repository$issues$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Issues$repository$issues$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Issues$repository$issues$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Issues$repository$issues$edges<TRes>
    implements CopyWith$Query$Issues$repository$issues$edges<TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues$edges(this._res);

  TRes _res;

  call({
    Query$Issues$repository$issues$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Issues$repository$issues$edges$node<TRes> get node =>
      CopyWith$Query$Issues$repository$issues$edges$node.stub(_res);
}

class Query$Issues$repository$issues$edges$node {
  Query$Issues$repository$issues$edges$node({
    required this.id,
    required this.number,
    required this.title,
    required this.createdAt,
    this.author,
    this.$__typename = 'Issue',
  });

  factory Query$Issues$repository$issues$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$title = json['title'];
    final l$createdAt = json['createdAt'];
    final l$author = json['author'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository$issues$edges$node(
      id: (l$id as String),
      number: (l$number as int),
      title: (l$title as String),
      createdAt: (l$createdAt as String),
      author: l$author == null
          ? null
          : Query$Issues$repository$issues$edges$node$author.fromJson(
              (l$author as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int number;

  final String title;

  final String createdAt;

  final Query$Issues$repository$issues$edges$node$author? author;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$author = author;
    _resultData['author'] = l$author?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$title = title;
    final l$createdAt = createdAt;
    final l$author = author;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$number,
      l$title,
      l$createdAt,
      l$author,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues$repository$issues$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
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

extension UtilityExtension$Query$Issues$repository$issues$edges$node
    on Query$Issues$repository$issues$edges$node {
  CopyWith$Query$Issues$repository$issues$edges$node<
          Query$Issues$repository$issues$edges$node>
      get copyWith => CopyWith$Query$Issues$repository$issues$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Issues$repository$issues$edges$node<TRes> {
  factory CopyWith$Query$Issues$repository$issues$edges$node(
    Query$Issues$repository$issues$edges$node instance,
    TRes Function(Query$Issues$repository$issues$edges$node) then,
  ) = _CopyWithImpl$Query$Issues$repository$issues$edges$node;

  factory CopyWith$Query$Issues$repository$issues$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues$edges$node;

  TRes call({
    String? id,
    int? number,
    String? title,
    String? createdAt,
    Query$Issues$repository$issues$edges$node$author? author,
    String? $__typename,
  });
  CopyWith$Query$Issues$repository$issues$edges$node$author<TRes> get author;
}

class _CopyWithImpl$Query$Issues$repository$issues$edges$node<TRes>
    implements CopyWith$Query$Issues$repository$issues$edges$node<TRes> {
  _CopyWithImpl$Query$Issues$repository$issues$edges$node(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues$edges$node _instance;

  final TRes Function(Query$Issues$repository$issues$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? number = _undefined,
    Object? title = _undefined,
    Object? createdAt = _undefined,
    Object? author = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository$issues$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined || number == null
            ? _instance.number
            : (number as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as String),
        author: author == _undefined
            ? _instance.author
            : (author as Query$Issues$repository$issues$edges$node$author?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Issues$repository$issues$edges$node$author<TRes> get author {
    final local$author = _instance.author;
    return local$author == null
        ? CopyWith$Query$Issues$repository$issues$edges$node$author.stub(
            _then(_instance))
        : CopyWith$Query$Issues$repository$issues$edges$node$author(
            local$author, (e) => call(author: e));
  }
}

class _CopyWithStubImpl$Query$Issues$repository$issues$edges$node<TRes>
    implements CopyWith$Query$Issues$repository$issues$edges$node<TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    int? number,
    String? title,
    String? createdAt,
    Query$Issues$repository$issues$edges$node$author? author,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Issues$repository$issues$edges$node$author<TRes> get author =>
      CopyWith$Query$Issues$repository$issues$edges$node$author.stub(_res);
}

class Query$Issues$repository$issues$edges$node$author {
  Query$Issues$repository$issues$edges$node$author({
    required this.login,
    required this.$__typename,
  });

  factory Query$Issues$repository$issues$edges$node$author.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Bot":
        return Query$Issues$repository$issues$edges$node$author$$Bot.fromJson(
            json);

      case "EnterpriseUserAccount":
        return Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount
            .fromJson(json);

      case "Mannequin":
        return Query$Issues$repository$issues$edges$node$author$$Mannequin
            .fromJson(json);

      case "Organization":
        return Query$Issues$repository$issues$edges$node$author$$Organization
            .fromJson(json);

      case "User":
        return Query$Issues$repository$issues$edges$node$author$$User.fromJson(
            json);

      default:
        final l$login = json['login'];
        final l$$__typename = json['__typename'];
        return Query$Issues$repository$issues$edges$node$author(
          login: (l$login as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues$repository$issues$edges$node$author ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Query$Issues$repository$issues$edges$node$author
    on Query$Issues$repository$issues$edges$node$author {
  CopyWith$Query$Issues$repository$issues$edges$node$author<
          Query$Issues$repository$issues$edges$node$author>
      get copyWith => CopyWith$Query$Issues$repository$issues$edges$node$author(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$Issues$repository$issues$edges$node$author$$Bot)
        bot,
    required _T Function(
            Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount)
        enterpriseUserAccount,
    required _T Function(
            Query$Issues$repository$issues$edges$node$author$$Mannequin)
        mannequin,
    required _T Function(
            Query$Issues$repository$issues$edges$node$author$$Organization)
        organization,
    required _T Function(Query$Issues$repository$issues$edges$node$author$$User)
        user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Bot":
        return bot(
            this as Query$Issues$repository$issues$edges$node$author$$Bot);

      case "EnterpriseUserAccount":
        return enterpriseUserAccount(this
            as Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount);

      case "Mannequin":
        return mannequin(this
            as Query$Issues$repository$issues$edges$node$author$$Mannequin);

      case "Organization":
        return organization(this
            as Query$Issues$repository$issues$edges$node$author$$Organization);

      case "User":
        return user(
            this as Query$Issues$repository$issues$edges$node$author$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Issues$repository$issues$edges$node$author$$Bot)? bot,
    _T Function(
            Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount)?
        enterpriseUserAccount,
    _T Function(Query$Issues$repository$issues$edges$node$author$$Mannequin)?
        mannequin,
    _T Function(Query$Issues$repository$issues$edges$node$author$$Organization)?
        organization,
    _T Function(Query$Issues$repository$issues$edges$node$author$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Bot":
        if (bot != null) {
          return bot(
              this as Query$Issues$repository$issues$edges$node$author$$Bot);
        } else {
          return orElse();
        }

      case "EnterpriseUserAccount":
        if (enterpriseUserAccount != null) {
          return enterpriseUserAccount(this
              as Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount);
        } else {
          return orElse();
        }

      case "Mannequin":
        if (mannequin != null) {
          return mannequin(this
              as Query$Issues$repository$issues$edges$node$author$$Mannequin);
        } else {
          return orElse();
        }

      case "Organization":
        if (organization != null) {
          return organization(this
              as Query$Issues$repository$issues$edges$node$author$$Organization);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(
              this as Query$Issues$repository$issues$edges$node$author$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Issues$repository$issues$edges$node$author<TRes> {
  factory CopyWith$Query$Issues$repository$issues$edges$node$author(
    Query$Issues$repository$issues$edges$node$author instance,
    TRes Function(Query$Issues$repository$issues$edges$node$author) then,
  ) = _CopyWithImpl$Query$Issues$repository$issues$edges$node$author;

  factory CopyWith$Query$Issues$repository$issues$edges$node$author.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Issues$repository$issues$edges$node$author<TRes>
    implements CopyWith$Query$Issues$repository$issues$edges$node$author<TRes> {
  _CopyWithImpl$Query$Issues$repository$issues$edges$node$author(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues$edges$node$author _instance;

  final TRes Function(Query$Issues$repository$issues$edges$node$author) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository$issues$edges$node$author(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author<TRes>
    implements CopyWith$Query$Issues$repository$issues$edges$node$author<TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author(this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Query$Issues$repository$issues$edges$node$author$$Bot
    implements Query$Issues$repository$issues$edges$node$author {
  Query$Issues$repository$issues$edges$node$author$$Bot({
    required this.login,
    this.$__typename = 'Bot',
  });

  factory Query$Issues$repository$issues$edges$node$author$$Bot.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository$issues$edges$node$author$$Bot(
      login: (l$login as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues$repository$issues$edges$node$author$$Bot ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Query$Issues$repository$issues$edges$node$author$$Bot
    on Query$Issues$repository$issues$edges$node$author$$Bot {
  CopyWith$Query$Issues$repository$issues$edges$node$author$$Bot<
          Query$Issues$repository$issues$edges$node$author$$Bot>
      get copyWith =>
          CopyWith$Query$Issues$repository$issues$edges$node$author$$Bot(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Issues$repository$issues$edges$node$author$$Bot<
    TRes> {
  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$Bot(
    Query$Issues$repository$issues$edges$node$author$$Bot instance,
    TRes Function(Query$Issues$repository$issues$edges$node$author$$Bot) then,
  ) = _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Bot;

  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$Bot.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Bot;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Bot<TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$Bot<TRes> {
  _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Bot(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues$edges$node$author$$Bot _instance;

  final TRes Function(Query$Issues$repository$issues$edges$node$author$$Bot)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository$issues$edges$node$author$$Bot(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Bot<
        TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$Bot<TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Bot(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount
    implements Query$Issues$repository$issues$edges$node$author {
  Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount({
    required this.login,
    this.$__typename = 'EnterpriseUserAccount',
  });

  factory Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount(
      login: (l$login as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount
    on Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount {
  CopyWith$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount<
          Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount>
      get copyWith =>
          CopyWith$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount<
    TRes> {
  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount(
    Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount
        instance,
    TRes Function(
            Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount)
        then,
  ) = _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount;

  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount<
        TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount<
            TRes> {
  _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount
      _instance;

  final TRes Function(
          Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount<
        TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount<
            TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$EnterpriseUserAccount(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Query$Issues$repository$issues$edges$node$author$$Mannequin
    implements Query$Issues$repository$issues$edges$node$author {
  Query$Issues$repository$issues$edges$node$author$$Mannequin({
    required this.login,
    this.$__typename = 'Mannequin',
  });

  factory Query$Issues$repository$issues$edges$node$author$$Mannequin.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository$issues$edges$node$author$$Mannequin(
      login: (l$login as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues$repository$issues$edges$node$author$$Mannequin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Query$Issues$repository$issues$edges$node$author$$Mannequin
    on Query$Issues$repository$issues$edges$node$author$$Mannequin {
  CopyWith$Query$Issues$repository$issues$edges$node$author$$Mannequin<
          Query$Issues$repository$issues$edges$node$author$$Mannequin>
      get copyWith =>
          CopyWith$Query$Issues$repository$issues$edges$node$author$$Mannequin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Issues$repository$issues$edges$node$author$$Mannequin<
    TRes> {
  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$Mannequin(
    Query$Issues$repository$issues$edges$node$author$$Mannequin instance,
    TRes Function(Query$Issues$repository$issues$edges$node$author$$Mannequin)
        then,
  ) = _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Mannequin;

  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$Mannequin.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Mannequin;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Mannequin<
        TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$Mannequin<
            TRes> {
  _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Mannequin(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues$edges$node$author$$Mannequin _instance;

  final TRes Function(
      Query$Issues$repository$issues$edges$node$author$$Mannequin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository$issues$edges$node$author$$Mannequin(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Mannequin<
        TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$Mannequin<
            TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Mannequin(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Query$Issues$repository$issues$edges$node$author$$Organization
    implements Query$Issues$repository$issues$edges$node$author {
  Query$Issues$repository$issues$edges$node$author$$Organization({
    required this.login,
    this.$__typename = 'Organization',
  });

  factory Query$Issues$repository$issues$edges$node$author$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository$issues$edges$node$author$$Organization(
      login: (l$login as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Issues$repository$issues$edges$node$author$$Organization ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Query$Issues$repository$issues$edges$node$author$$Organization
    on Query$Issues$repository$issues$edges$node$author$$Organization {
  CopyWith$Query$Issues$repository$issues$edges$node$author$$Organization<
          Query$Issues$repository$issues$edges$node$author$$Organization>
      get copyWith =>
          CopyWith$Query$Issues$repository$issues$edges$node$author$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Issues$repository$issues$edges$node$author$$Organization<
    TRes> {
  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$Organization(
    Query$Issues$repository$issues$edges$node$author$$Organization instance,
    TRes Function(
            Query$Issues$repository$issues$edges$node$author$$Organization)
        then,
  ) = _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Organization;

  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Organization;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Organization<
        TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$Organization<
            TRes> {
  _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$Organization(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues$edges$node$author$$Organization
      _instance;

  final TRes Function(
      Query$Issues$repository$issues$edges$node$author$$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository$issues$edges$node$author$$Organization(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Organization<
        TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$Organization<
            TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$Organization(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

class Query$Issues$repository$issues$edges$node$author$$User
    implements Query$Issues$repository$issues$edges$node$author {
  Query$Issues$repository$issues$edges$node$author$$User({
    required this.login,
    this.$__typename = 'User',
  });

  factory Query$Issues$repository$issues$edges$node$author$$User.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$Issues$repository$issues$edges$node$author$$User(
      login: (l$login as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Issues$repository$issues$edges$node$author$$User ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Query$Issues$repository$issues$edges$node$author$$User
    on Query$Issues$repository$issues$edges$node$author$$User {
  CopyWith$Query$Issues$repository$issues$edges$node$author$$User<
          Query$Issues$repository$issues$edges$node$author$$User>
      get copyWith =>
          CopyWith$Query$Issues$repository$issues$edges$node$author$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Issues$repository$issues$edges$node$author$$User<
    TRes> {
  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$User(
    Query$Issues$repository$issues$edges$node$author$$User instance,
    TRes Function(Query$Issues$repository$issues$edges$node$author$$User) then,
  ) = _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$User;

  factory CopyWith$Query$Issues$repository$issues$edges$node$author$$User.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$User;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$User<TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$User<TRes> {
  _CopyWithImpl$Query$Issues$repository$issues$edges$node$author$$User(
    this._instance,
    this._then,
  );

  final Query$Issues$repository$issues$edges$node$author$$User _instance;

  final TRes Function(Query$Issues$repository$issues$edges$node$author$$User)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Issues$repository$issues$edges$node$author$$User(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$User<
        TRes>
    implements
        CopyWith$Query$Issues$repository$issues$edges$node$author$$User<TRes> {
  _CopyWithStubImpl$Query$Issues$repository$issues$edges$node$author$$User(
      this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}

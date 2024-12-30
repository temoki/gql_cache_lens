// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GIssuesData> _$gIssuesDataSerializer = new _$GIssuesDataSerializer();
Serializer<GIssuesData_repository> _$gIssuesDataRepositorySerializer =
    new _$GIssuesData_repositorySerializer();
Serializer<GIssuesData_repository_issues>
    _$gIssuesDataRepositoryIssuesSerializer =
    new _$GIssuesData_repository_issuesSerializer();
Serializer<GIssuesData_repository_issues_edges>
    _$gIssuesDataRepositoryIssuesEdgesSerializer =
    new _$GIssuesData_repository_issues_edgesSerializer();
Serializer<GIssuesData_repository_issues_edges_node>
    _$gIssuesDataRepositoryIssuesEdgesNodeSerializer =
    new _$GIssuesData_repository_issues_edges_nodeSerializer();
Serializer<GIssuesData_repository_issues_edges_node_author>
    _$gIssuesDataRepositoryIssuesEdgesNodeAuthorSerializer =
    new _$GIssuesData_repository_issues_edges_node_authorSerializer();

class _$GIssuesDataSerializer implements StructuredSerializer<GIssuesData> {
  @override
  final Iterable<Type> types = const [GIssuesData, _$GIssuesData];
  @override
  final String wireName = 'GIssuesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GIssuesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.repository;
    if (value != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GIssuesData_repository)));
    }
    return result;
  }

  @override
  GIssuesData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssuesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GIssuesData_repository))!
              as GIssuesData_repository);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssuesData_repositorySerializer
    implements StructuredSerializer<GIssuesData_repository> {
  @override
  final Iterable<Type> types = const [
    GIssuesData_repository,
    _$GIssuesData_repository
  ];
  @override
  final String wireName = 'GIssuesData_repository';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssuesData_repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'issues',
      serializers.serialize(object.issues,
          specifiedType: const FullType(GIssuesData_repository_issues)),
    ];

    return result;
  }

  @override
  GIssuesData_repository deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssuesData_repositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'issues':
          result.issues.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GIssuesData_repository_issues))!
              as GIssuesData_repository_issues);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssuesData_repository_issuesSerializer
    implements StructuredSerializer<GIssuesData_repository_issues> {
  @override
  final Iterable<Type> types = const [
    GIssuesData_repository_issues,
    _$GIssuesData_repository_issues
  ];
  @override
  final String wireName = 'GIssuesData_repository_issues';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssuesData_repository_issues object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GIssuesData_repository_issues_edges)
            ])));
    }
    return result;
  }

  @override
  GIssuesData_repository_issues deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssuesData_repository_issuesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GIssuesData_repository_issues_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssuesData_repository_issues_edgesSerializer
    implements StructuredSerializer<GIssuesData_repository_issues_edges> {
  @override
  final Iterable<Type> types = const [
    GIssuesData_repository_issues_edges,
    _$GIssuesData_repository_issues_edges
  ];
  @override
  final String wireName = 'GIssuesData_repository_issues_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssuesData_repository_issues_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GIssuesData_repository_issues_edges_node)));
    }
    return result;
  }

  @override
  GIssuesData_repository_issues_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssuesData_repository_issues_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GIssuesData_repository_issues_edges_node))!
              as GIssuesData_repository_issues_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssuesData_repository_issues_edges_nodeSerializer
    implements StructuredSerializer<GIssuesData_repository_issues_edges_node> {
  @override
  final Iterable<Type> types = const [
    GIssuesData_repository_issues_edges_node,
    _$GIssuesData_repository_issues_edges_node
  ];
  @override
  final String wireName = 'GIssuesData_repository_issues_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssuesData_repository_issues_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
    ];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GIssuesData_repository_issues_edges_node_author)));
    }
    return result;
  }

  @override
  GIssuesData_repository_issues_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssuesData_repository_issues_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GIssuesData_repository_issues_edges_node_author))!
              as GIssuesData_repository_issues_edges_node_author);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssuesData_repository_issues_edges_node_authorSerializer
    implements
        StructuredSerializer<GIssuesData_repository_issues_edges_node_author> {
  @override
  final Iterable<Type> types = const [
    GIssuesData_repository_issues_edges_node_author,
    _$GIssuesData_repository_issues_edges_node_author
  ];
  @override
  final String wireName = 'GIssuesData_repository_issues_edges_node_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GIssuesData_repository_issues_edges_node_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GIssuesData_repository_issues_edges_node_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssuesData_repository_issues_edges_node_authorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GIssuesData extends GIssuesData {
  @override
  final String G__typename;
  @override
  final GIssuesData_repository? repository;

  factory _$GIssuesData([void Function(GIssuesDataBuilder)? updates]) =>
      (new GIssuesDataBuilder()..update(updates))._build();

  _$GIssuesData._({required this.G__typename, this.repository}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GIssuesData', 'G__typename');
  }

  @override
  GIssuesData rebuild(void Function(GIssuesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssuesDataBuilder toBuilder() => new GIssuesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssuesData &&
        G__typename == other.G__typename &&
        repository == other.repository;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, repository.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GIssuesData')
          ..add('G__typename', G__typename)
          ..add('repository', repository))
        .toString();
  }
}

class GIssuesDataBuilder implements Builder<GIssuesData, GIssuesDataBuilder> {
  _$GIssuesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GIssuesData_repositoryBuilder? _repository;
  GIssuesData_repositoryBuilder get repository =>
      _$this._repository ??= new GIssuesData_repositoryBuilder();
  set repository(GIssuesData_repositoryBuilder? repository) =>
      _$this._repository = repository;

  GIssuesDataBuilder() {
    GIssuesData._initializeBuilder(this);
  }

  GIssuesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _repository = $v.repository?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssuesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssuesData;
  }

  @override
  void update(void Function(GIssuesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GIssuesData build() => _build();

  _$GIssuesData _build() {
    _$GIssuesData _$result;
    try {
      _$result = _$v ??
          new _$GIssuesData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GIssuesData', 'G__typename'),
            repository: _repository?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GIssuesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssuesData_repository extends GIssuesData_repository {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GIssuesData_repository_issues issues;

  factory _$GIssuesData_repository(
          [void Function(GIssuesData_repositoryBuilder)? updates]) =>
      (new GIssuesData_repositoryBuilder()..update(updates))._build();

  _$GIssuesData_repository._(
      {required this.G__typename, required this.id, required this.issues})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GIssuesData_repository', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GIssuesData_repository', 'id');
    BuiltValueNullFieldError.checkNotNull(
        issues, r'GIssuesData_repository', 'issues');
  }

  @override
  GIssuesData_repository rebuild(
          void Function(GIssuesData_repositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssuesData_repositoryBuilder toBuilder() =>
      new GIssuesData_repositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssuesData_repository &&
        G__typename == other.G__typename &&
        id == other.id &&
        issues == other.issues;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, issues.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GIssuesData_repository')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('issues', issues))
        .toString();
  }
}

class GIssuesData_repositoryBuilder
    implements Builder<GIssuesData_repository, GIssuesData_repositoryBuilder> {
  _$GIssuesData_repository? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GIssuesData_repository_issuesBuilder? _issues;
  GIssuesData_repository_issuesBuilder get issues =>
      _$this._issues ??= new GIssuesData_repository_issuesBuilder();
  set issues(GIssuesData_repository_issuesBuilder? issues) =>
      _$this._issues = issues;

  GIssuesData_repositoryBuilder() {
    GIssuesData_repository._initializeBuilder(this);
  }

  GIssuesData_repositoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _issues = $v.issues.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssuesData_repository other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssuesData_repository;
  }

  @override
  void update(void Function(GIssuesData_repositoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GIssuesData_repository build() => _build();

  _$GIssuesData_repository _build() {
    _$GIssuesData_repository _$result;
    try {
      _$result = _$v ??
          new _$GIssuesData_repository._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GIssuesData_repository', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GIssuesData_repository', 'id'),
            issues: issues.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'issues';
        issues.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GIssuesData_repository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssuesData_repository_issues extends GIssuesData_repository_issues {
  @override
  final String G__typename;
  @override
  final BuiltList<GIssuesData_repository_issues_edges?>? edges;

  factory _$GIssuesData_repository_issues(
          [void Function(GIssuesData_repository_issuesBuilder)? updates]) =>
      (new GIssuesData_repository_issuesBuilder()..update(updates))._build();

  _$GIssuesData_repository_issues._({required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GIssuesData_repository_issues', 'G__typename');
  }

  @override
  GIssuesData_repository_issues rebuild(
          void Function(GIssuesData_repository_issuesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssuesData_repository_issuesBuilder toBuilder() =>
      new GIssuesData_repository_issuesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssuesData_repository_issues &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GIssuesData_repository_issues')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GIssuesData_repository_issuesBuilder
    implements
        Builder<GIssuesData_repository_issues,
            GIssuesData_repository_issuesBuilder> {
  _$GIssuesData_repository_issues? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GIssuesData_repository_issues_edges?>? _edges;
  ListBuilder<GIssuesData_repository_issues_edges?> get edges =>
      _$this._edges ??= new ListBuilder<GIssuesData_repository_issues_edges?>();
  set edges(ListBuilder<GIssuesData_repository_issues_edges?>? edges) =>
      _$this._edges = edges;

  GIssuesData_repository_issuesBuilder() {
    GIssuesData_repository_issues._initializeBuilder(this);
  }

  GIssuesData_repository_issuesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssuesData_repository_issues other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssuesData_repository_issues;
  }

  @override
  void update(void Function(GIssuesData_repository_issuesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GIssuesData_repository_issues build() => _build();

  _$GIssuesData_repository_issues _build() {
    _$GIssuesData_repository_issues _$result;
    try {
      _$result = _$v ??
          new _$GIssuesData_repository_issues._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GIssuesData_repository_issues', 'G__typename'),
            edges: _edges?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GIssuesData_repository_issues', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssuesData_repository_issues_edges
    extends GIssuesData_repository_issues_edges {
  @override
  final String G__typename;
  @override
  final GIssuesData_repository_issues_edges_node? node;

  factory _$GIssuesData_repository_issues_edges(
          [void Function(GIssuesData_repository_issues_edgesBuilder)?
              updates]) =>
      (new GIssuesData_repository_issues_edgesBuilder()..update(updates))
          ._build();

  _$GIssuesData_repository_issues_edges._(
      {required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GIssuesData_repository_issues_edges', 'G__typename');
  }

  @override
  GIssuesData_repository_issues_edges rebuild(
          void Function(GIssuesData_repository_issues_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssuesData_repository_issues_edgesBuilder toBuilder() =>
      new GIssuesData_repository_issues_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssuesData_repository_issues_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GIssuesData_repository_issues_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GIssuesData_repository_issues_edgesBuilder
    implements
        Builder<GIssuesData_repository_issues_edges,
            GIssuesData_repository_issues_edgesBuilder> {
  _$GIssuesData_repository_issues_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GIssuesData_repository_issues_edges_nodeBuilder? _node;
  GIssuesData_repository_issues_edges_nodeBuilder get node =>
      _$this._node ??= new GIssuesData_repository_issues_edges_nodeBuilder();
  set node(GIssuesData_repository_issues_edges_nodeBuilder? node) =>
      _$this._node = node;

  GIssuesData_repository_issues_edgesBuilder() {
    GIssuesData_repository_issues_edges._initializeBuilder(this);
  }

  GIssuesData_repository_issues_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssuesData_repository_issues_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssuesData_repository_issues_edges;
  }

  @override
  void update(
      void Function(GIssuesData_repository_issues_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GIssuesData_repository_issues_edges build() => _build();

  _$GIssuesData_repository_issues_edges _build() {
    _$GIssuesData_repository_issues_edges _$result;
    try {
      _$result = _$v ??
          new _$GIssuesData_repository_issues_edges._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GIssuesData_repository_issues_edges', 'G__typename'),
            node: _node?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GIssuesData_repository_issues_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssuesData_repository_issues_edges_node
    extends GIssuesData_repository_issues_edges_node {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int number;
  @override
  final String title;
  @override
  final _i2.GDateTime createdAt;
  @override
  final GIssuesData_repository_issues_edges_node_author? author;

  factory _$GIssuesData_repository_issues_edges_node(
          [void Function(GIssuesData_repository_issues_edges_nodeBuilder)?
              updates]) =>
      (new GIssuesData_repository_issues_edges_nodeBuilder()..update(updates))
          ._build();

  _$GIssuesData_repository_issues_edges_node._(
      {required this.G__typename,
      required this.id,
      required this.number,
      required this.title,
      required this.createdAt,
      this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GIssuesData_repository_issues_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GIssuesData_repository_issues_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        number, r'GIssuesData_repository_issues_edges_node', 'number');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GIssuesData_repository_issues_edges_node', 'title');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GIssuesData_repository_issues_edges_node', 'createdAt');
  }

  @override
  GIssuesData_repository_issues_edges_node rebuild(
          void Function(GIssuesData_repository_issues_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssuesData_repository_issues_edges_nodeBuilder toBuilder() =>
      new GIssuesData_repository_issues_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssuesData_repository_issues_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        number == other.number &&
        title == other.title &&
        createdAt == other.createdAt &&
        author == other.author;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GIssuesData_repository_issues_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('number', number)
          ..add('title', title)
          ..add('createdAt', createdAt)
          ..add('author', author))
        .toString();
  }
}

class GIssuesData_repository_issues_edges_nodeBuilder
    implements
        Builder<GIssuesData_repository_issues_edges_node,
            GIssuesData_repository_issues_edges_nodeBuilder> {
  _$GIssuesData_repository_issues_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GIssuesData_repository_issues_edges_node_authorBuilder? _author;
  GIssuesData_repository_issues_edges_node_authorBuilder get author =>
      _$this._author ??=
          new GIssuesData_repository_issues_edges_node_authorBuilder();
  set author(GIssuesData_repository_issues_edges_node_authorBuilder? author) =>
      _$this._author = author;

  GIssuesData_repository_issues_edges_nodeBuilder() {
    GIssuesData_repository_issues_edges_node._initializeBuilder(this);
  }

  GIssuesData_repository_issues_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _number = $v.number;
      _title = $v.title;
      _createdAt = $v.createdAt.toBuilder();
      _author = $v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssuesData_repository_issues_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssuesData_repository_issues_edges_node;
  }

  @override
  void update(
      void Function(GIssuesData_repository_issues_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GIssuesData_repository_issues_edges_node build() => _build();

  _$GIssuesData_repository_issues_edges_node _build() {
    _$GIssuesData_repository_issues_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GIssuesData_repository_issues_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GIssuesData_repository_issues_edges_node', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GIssuesData_repository_issues_edges_node', 'id'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'GIssuesData_repository_issues_edges_node', 'number'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GIssuesData_repository_issues_edges_node', 'title'),
            createdAt: createdAt.build(),
            author: _author?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GIssuesData_repository_issues_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssuesData_repository_issues_edges_node_author
    extends GIssuesData_repository_issues_edges_node_author {
  @override
  final String G__typename;
  @override
  final String login;

  factory _$GIssuesData_repository_issues_edges_node_author(
          [void Function(
                  GIssuesData_repository_issues_edges_node_authorBuilder)?
              updates]) =>
      (new GIssuesData_repository_issues_edges_node_authorBuilder()
            ..update(updates))
          ._build();

  _$GIssuesData_repository_issues_edges_node_author._(
      {required this.G__typename, required this.login})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GIssuesData_repository_issues_edges_node_author', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        login, r'GIssuesData_repository_issues_edges_node_author', 'login');
  }

  @override
  GIssuesData_repository_issues_edges_node_author rebuild(
          void Function(GIssuesData_repository_issues_edges_node_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssuesData_repository_issues_edges_node_authorBuilder toBuilder() =>
      new GIssuesData_repository_issues_edges_node_authorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssuesData_repository_issues_edges_node_author &&
        G__typename == other.G__typename &&
        login == other.login;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GIssuesData_repository_issues_edges_node_author')
          ..add('G__typename', G__typename)
          ..add('login', login))
        .toString();
  }
}

class GIssuesData_repository_issues_edges_node_authorBuilder
    implements
        Builder<GIssuesData_repository_issues_edges_node_author,
            GIssuesData_repository_issues_edges_node_authorBuilder> {
  _$GIssuesData_repository_issues_edges_node_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  GIssuesData_repository_issues_edges_node_authorBuilder() {
    GIssuesData_repository_issues_edges_node_author._initializeBuilder(this);
  }

  GIssuesData_repository_issues_edges_node_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssuesData_repository_issues_edges_node_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssuesData_repository_issues_edges_node_author;
  }

  @override
  void update(
      void Function(GIssuesData_repository_issues_edges_node_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GIssuesData_repository_issues_edges_node_author build() => _build();

  _$GIssuesData_repository_issues_edges_node_author _build() {
    final _$result = _$v ??
        new _$GIssuesData_repository_issues_edges_node_author._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GIssuesData_repository_issues_edges_node_author',
              'G__typename'),
          login: BuiltValueNullFieldError.checkNotNull(login,
              r'GIssuesData_repository_issues_edges_node_author', 'login'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

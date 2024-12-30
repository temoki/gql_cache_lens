// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_issue.mutation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNewIssueData> _$gNewIssueDataSerializer =
    new _$GNewIssueDataSerializer();
Serializer<GNewIssueData_createIssue> _$gNewIssueDataCreateIssueSerializer =
    new _$GNewIssueData_createIssueSerializer();
Serializer<GNewIssueData_createIssue_issue>
    _$gNewIssueDataCreateIssueIssueSerializer =
    new _$GNewIssueData_createIssue_issueSerializer();

class _$GNewIssueDataSerializer implements StructuredSerializer<GNewIssueData> {
  @override
  final Iterable<Type> types = const [GNewIssueData, _$GNewIssueData];
  @override
  final String wireName = 'GNewIssueData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNewIssueData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createIssue;
    if (value != null) {
      result
        ..add('createIssue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GNewIssueData_createIssue)));
    }
    return result;
  }

  @override
  GNewIssueData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewIssueDataBuilder();

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
        case 'createIssue':
          result.createIssue.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GNewIssueData_createIssue))!
              as GNewIssueData_createIssue);
          break;
      }
    }

    return result.build();
  }
}

class _$GNewIssueData_createIssueSerializer
    implements StructuredSerializer<GNewIssueData_createIssue> {
  @override
  final Iterable<Type> types = const [
    GNewIssueData_createIssue,
    _$GNewIssueData_createIssue
  ];
  @override
  final String wireName = 'GNewIssueData_createIssue';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNewIssueData_createIssue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.issue;
    if (value != null) {
      result
        ..add('issue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GNewIssueData_createIssue_issue)));
    }
    return result;
  }

  @override
  GNewIssueData_createIssue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewIssueData_createIssueBuilder();

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
        case 'issue':
          result.issue.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GNewIssueData_createIssue_issue))!
              as GNewIssueData_createIssue_issue);
          break;
      }
    }

    return result.build();
  }
}

class _$GNewIssueData_createIssue_issueSerializer
    implements StructuredSerializer<GNewIssueData_createIssue_issue> {
  @override
  final Iterable<Type> types = const [
    GNewIssueData_createIssue_issue,
    _$GNewIssueData_createIssue_issue
  ];
  @override
  final String wireName = 'GNewIssueData_createIssue_issue';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNewIssueData_createIssue_issue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GNewIssueData_createIssue_issue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewIssueData_createIssue_issueBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GNewIssueData extends GNewIssueData {
  @override
  final String G__typename;
  @override
  final GNewIssueData_createIssue? createIssue;

  factory _$GNewIssueData([void Function(GNewIssueDataBuilder)? updates]) =>
      (new GNewIssueDataBuilder()..update(updates))._build();

  _$GNewIssueData._({required this.G__typename, this.createIssue}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNewIssueData', 'G__typename');
  }

  @override
  GNewIssueData rebuild(void Function(GNewIssueDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewIssueDataBuilder toBuilder() => new GNewIssueDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewIssueData &&
        G__typename == other.G__typename &&
        createIssue == other.createIssue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createIssue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNewIssueData')
          ..add('G__typename', G__typename)
          ..add('createIssue', createIssue))
        .toString();
  }
}

class GNewIssueDataBuilder
    implements Builder<GNewIssueData, GNewIssueDataBuilder> {
  _$GNewIssueData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNewIssueData_createIssueBuilder? _createIssue;
  GNewIssueData_createIssueBuilder get createIssue =>
      _$this._createIssue ??= new GNewIssueData_createIssueBuilder();
  set createIssue(GNewIssueData_createIssueBuilder? createIssue) =>
      _$this._createIssue = createIssue;

  GNewIssueDataBuilder() {
    GNewIssueData._initializeBuilder(this);
  }

  GNewIssueDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createIssue = $v.createIssue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewIssueData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewIssueData;
  }

  @override
  void update(void Function(GNewIssueDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNewIssueData build() => _build();

  _$GNewIssueData _build() {
    _$GNewIssueData _$result;
    try {
      _$result = _$v ??
          new _$GNewIssueData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GNewIssueData', 'G__typename'),
            createIssue: _createIssue?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createIssue';
        _createIssue?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNewIssueData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNewIssueData_createIssue extends GNewIssueData_createIssue {
  @override
  final String G__typename;
  @override
  final GNewIssueData_createIssue_issue? issue;

  factory _$GNewIssueData_createIssue(
          [void Function(GNewIssueData_createIssueBuilder)? updates]) =>
      (new GNewIssueData_createIssueBuilder()..update(updates))._build();

  _$GNewIssueData_createIssue._({required this.G__typename, this.issue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNewIssueData_createIssue', 'G__typename');
  }

  @override
  GNewIssueData_createIssue rebuild(
          void Function(GNewIssueData_createIssueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewIssueData_createIssueBuilder toBuilder() =>
      new GNewIssueData_createIssueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewIssueData_createIssue &&
        G__typename == other.G__typename &&
        issue == other.issue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, issue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNewIssueData_createIssue')
          ..add('G__typename', G__typename)
          ..add('issue', issue))
        .toString();
  }
}

class GNewIssueData_createIssueBuilder
    implements
        Builder<GNewIssueData_createIssue, GNewIssueData_createIssueBuilder> {
  _$GNewIssueData_createIssue? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNewIssueData_createIssue_issueBuilder? _issue;
  GNewIssueData_createIssue_issueBuilder get issue =>
      _$this._issue ??= new GNewIssueData_createIssue_issueBuilder();
  set issue(GNewIssueData_createIssue_issueBuilder? issue) =>
      _$this._issue = issue;

  GNewIssueData_createIssueBuilder() {
    GNewIssueData_createIssue._initializeBuilder(this);
  }

  GNewIssueData_createIssueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _issue = $v.issue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewIssueData_createIssue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewIssueData_createIssue;
  }

  @override
  void update(void Function(GNewIssueData_createIssueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNewIssueData_createIssue build() => _build();

  _$GNewIssueData_createIssue _build() {
    _$GNewIssueData_createIssue _$result;
    try {
      _$result = _$v ??
          new _$GNewIssueData_createIssue._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GNewIssueData_createIssue', 'G__typename'),
            issue: _issue?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'issue';
        _issue?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNewIssueData_createIssue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNewIssueData_createIssue_issue
    extends GNewIssueData_createIssue_issue {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GNewIssueData_createIssue_issue(
          [void Function(GNewIssueData_createIssue_issueBuilder)? updates]) =>
      (new GNewIssueData_createIssue_issueBuilder()..update(updates))._build();

  _$GNewIssueData_createIssue_issue._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNewIssueData_createIssue_issue', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GNewIssueData_createIssue_issue', 'id');
  }

  @override
  GNewIssueData_createIssue_issue rebuild(
          void Function(GNewIssueData_createIssue_issueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewIssueData_createIssue_issueBuilder toBuilder() =>
      new GNewIssueData_createIssue_issueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewIssueData_createIssue_issue &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNewIssueData_createIssue_issue')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GNewIssueData_createIssue_issueBuilder
    implements
        Builder<GNewIssueData_createIssue_issue,
            GNewIssueData_createIssue_issueBuilder> {
  _$GNewIssueData_createIssue_issue? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GNewIssueData_createIssue_issueBuilder() {
    GNewIssueData_createIssue_issue._initializeBuilder(this);
  }

  GNewIssueData_createIssue_issueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewIssueData_createIssue_issue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewIssueData_createIssue_issue;
  }

  @override
  void update(void Function(GNewIssueData_createIssue_issueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNewIssueData_createIssue_issue build() => _build();

  _$GNewIssueData_createIssue_issue _build() {
    final _$result = _$v ??
        new _$GNewIssueData_createIssue_issue._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GNewIssueData_createIssue_issue', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GNewIssueData_createIssue_issue', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

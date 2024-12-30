// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_issue.mutation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNewIssueVars> _$gNewIssueVarsSerializer =
    new _$GNewIssueVarsSerializer();

class _$GNewIssueVarsSerializer implements StructuredSerializer<GNewIssueVars> {
  @override
  final Iterable<Type> types = const [GNewIssueVars, _$GNewIssueVars];
  @override
  final String wireName = 'GNewIssueVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNewIssueVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'repositoryId',
      serializers.serialize(object.repositoryId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GNewIssueVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewIssueVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'repositoryId':
          result.repositoryId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNewIssueVars extends GNewIssueVars {
  @override
  final String repositoryId;
  @override
  final String title;
  @override
  final String? body;

  factory _$GNewIssueVars([void Function(GNewIssueVarsBuilder)? updates]) =>
      (new GNewIssueVarsBuilder()..update(updates))._build();

  _$GNewIssueVars._(
      {required this.repositoryId, required this.title, this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        repositoryId, r'GNewIssueVars', 'repositoryId');
    BuiltValueNullFieldError.checkNotNull(title, r'GNewIssueVars', 'title');
  }

  @override
  GNewIssueVars rebuild(void Function(GNewIssueVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewIssueVarsBuilder toBuilder() => new GNewIssueVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewIssueVars &&
        repositoryId == other.repositoryId &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, repositoryId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNewIssueVars')
          ..add('repositoryId', repositoryId)
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class GNewIssueVarsBuilder
    implements Builder<GNewIssueVars, GNewIssueVarsBuilder> {
  _$GNewIssueVars? _$v;

  String? _repositoryId;
  String? get repositoryId => _$this._repositoryId;
  set repositoryId(String? repositoryId) => _$this._repositoryId = repositoryId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  GNewIssueVarsBuilder();

  GNewIssueVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _repositoryId = $v.repositoryId;
      _title = $v.title;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewIssueVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewIssueVars;
  }

  @override
  void update(void Function(GNewIssueVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNewIssueVars build() => _build();

  _$GNewIssueVars _build() {
    final _$result = _$v ??
        new _$GNewIssueVars._(
          repositoryId: BuiltValueNullFieldError.checkNotNull(
              repositoryId, r'GNewIssueVars', 'repositoryId'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'GNewIssueVars', 'title'),
          body: body,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

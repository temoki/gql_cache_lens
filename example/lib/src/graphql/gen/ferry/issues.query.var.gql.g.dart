// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GIssuesVars> _$gIssuesVarsSerializer = new _$GIssuesVarsSerializer();

class _$GIssuesVarsSerializer implements StructuredSerializer<GIssuesVars> {
  @override
  final Iterable<Type> types = const [GIssuesVars, _$GIssuesVars];
  @override
  final String wireName = 'GIssuesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GIssuesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GIssuesVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssuesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GIssuesVars extends GIssuesVars {
  @override
  final String owner;
  @override
  final String name;

  factory _$GIssuesVars([void Function(GIssuesVarsBuilder)? updates]) =>
      (new GIssuesVarsBuilder()..update(updates))._build();

  _$GIssuesVars._({required this.owner, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(owner, r'GIssuesVars', 'owner');
    BuiltValueNullFieldError.checkNotNull(name, r'GIssuesVars', 'name');
  }

  @override
  GIssuesVars rebuild(void Function(GIssuesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssuesVarsBuilder toBuilder() => new GIssuesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssuesVars && owner == other.owner && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GIssuesVars')
          ..add('owner', owner)
          ..add('name', name))
        .toString();
  }
}

class GIssuesVarsBuilder implements Builder<GIssuesVars, GIssuesVarsBuilder> {
  _$GIssuesVars? _$v;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GIssuesVarsBuilder();

  GIssuesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssuesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssuesVars;
  }

  @override
  void update(void Function(GIssuesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GIssuesVars build() => _build();

  _$GIssuesVars _build() {
    final _$result = _$v ??
        new _$GIssuesVars._(
          owner: BuiltValueNullFieldError.checkNotNull(
              owner, r'GIssuesVars', 'owner'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'GIssuesVars', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

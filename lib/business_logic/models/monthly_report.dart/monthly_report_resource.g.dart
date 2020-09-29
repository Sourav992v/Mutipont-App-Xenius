// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_report_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MonthlyReportResource> _$monthlyReportResourceSerializer =
    new _$MonthlyReportResourceSerializer();

class _$MonthlyReportResourceSerializer
    implements StructuredSerializer<MonthlyReportResource> {
  @override
  final Iterable<Type> types = const [
    MonthlyReportResource,
    _$MonthlyReportResource
  ];
  @override
  final String wireName = 'MonthlyReportResource';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MonthlyReportResource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'grid',
      serializers.serialize(object.grid,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MonthlyGrid)])),
      'dg',
      serializers.serialize(object.dg,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MonthlyDG)])),
    ];

    return result;
  }

  @override
  MonthlyReportResource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonthlyReportResourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'grid':
          result.grid.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MonthlyGrid)]))
              as BuiltList<Object>);
          break;
        case 'dg':
          result.dg.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MonthlyDG)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MonthlyReportResource extends MonthlyReportResource {
  @override
  final BuiltList<MonthlyGrid> grid;
  @override
  final BuiltList<MonthlyDG> dg;

  factory _$MonthlyReportResource(
          [void Function(MonthlyReportResourceBuilder) updates]) =>
      (new MonthlyReportResourceBuilder()..update(updates)).build();

  _$MonthlyReportResource._({this.grid, this.dg}) : super._() {
    if (grid == null) {
      throw new BuiltValueNullFieldError('MonthlyReportResource', 'grid');
    }
    if (dg == null) {
      throw new BuiltValueNullFieldError('MonthlyReportResource', 'dg');
    }
  }

  @override
  MonthlyReportResource rebuild(
          void Function(MonthlyReportResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthlyReportResourceBuilder toBuilder() =>
      new MonthlyReportResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthlyReportResource &&
        grid == other.grid &&
        dg == other.dg;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, grid.hashCode), dg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MonthlyReportResource')
          ..add('grid', grid)
          ..add('dg', dg))
        .toString();
  }
}

class MonthlyReportResourceBuilder
    implements Builder<MonthlyReportResource, MonthlyReportResourceBuilder> {
  _$MonthlyReportResource _$v;

  ListBuilder<MonthlyGrid> _grid;
  ListBuilder<MonthlyGrid> get grid =>
      _$this._grid ??= new ListBuilder<MonthlyGrid>();
  set grid(ListBuilder<MonthlyGrid> grid) => _$this._grid = grid;

  ListBuilder<MonthlyDG> _dg;
  ListBuilder<MonthlyDG> get dg => _$this._dg ??= new ListBuilder<MonthlyDG>();
  set dg(ListBuilder<MonthlyDG> dg) => _$this._dg = dg;

  MonthlyReportResourceBuilder();

  MonthlyReportResourceBuilder get _$this {
    if (_$v != null) {
      _grid = _$v.grid?.toBuilder();
      _dg = _$v.dg?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthlyReportResource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MonthlyReportResource;
  }

  @override
  void update(void Function(MonthlyReportResourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MonthlyReportResource build() {
    _$MonthlyReportResource _$result;
    try {
      _$result = _$v ??
          new _$MonthlyReportResource._(grid: grid.build(), dg: dg.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'grid';
        grid.build();
        _$failedField = 'dg';
        dg.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MonthlyReportResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_report_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyReportResource> _$dailyReportResourceSerializer =
    new _$DailyReportResourceSerializer();

class _$DailyReportResourceSerializer
    implements StructuredSerializer<DailyReportResource> {
  @override
  final Iterable<Type> types = const [
    DailyReportResource,
    _$DailyReportResource
  ];
  @override
  final String wireName = 'DailyReportResource';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DailyReportResource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'grid',
      serializers.serialize(object.grid,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Grid)])),
      'dg',
      serializers.serialize(object.dg,
          specifiedType: const FullType(BuiltList, const [const FullType(Dg)])),
    ];

    return result;
  }

  @override
  DailyReportResource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyReportResourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'grid':
          result.grid.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Grid)]))
              as BuiltList<Object>);
          break;
        case 'dg':
          result.dg.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Dg)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DailyReportResource extends DailyReportResource {
  @override
  final BuiltList<Grid> grid;
  @override
  final BuiltList<Dg> dg;

  factory _$DailyReportResource(
          [void Function(DailyReportResourceBuilder) updates]) =>
      (new DailyReportResourceBuilder()..update(updates)).build();

  _$DailyReportResource._({this.grid, this.dg}) : super._() {
    if (grid == null) {
      throw new BuiltValueNullFieldError('DailyReportResource', 'grid');
    }
    if (dg == null) {
      throw new BuiltValueNullFieldError('DailyReportResource', 'dg');
    }
  }

  @override
  DailyReportResource rebuild(
          void Function(DailyReportResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyReportResourceBuilder toBuilder() =>
      new DailyReportResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyReportResource && grid == other.grid && dg == other.dg;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, grid.hashCode), dg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DailyReportResource')
          ..add('grid', grid)
          ..add('dg', dg))
        .toString();
  }
}

class DailyReportResourceBuilder
    implements Builder<DailyReportResource, DailyReportResourceBuilder> {
  _$DailyReportResource _$v;

  ListBuilder<Grid> _grid;
  ListBuilder<Grid> get grid => _$this._grid ??= new ListBuilder<Grid>();
  set grid(ListBuilder<Grid> grid) => _$this._grid = grid;

  ListBuilder<Dg> _dg;
  ListBuilder<Dg> get dg => _$this._dg ??= new ListBuilder<Dg>();
  set dg(ListBuilder<Dg> dg) => _$this._dg = dg;

  DailyReportResourceBuilder();

  DailyReportResourceBuilder get _$this {
    if (_$v != null) {
      _grid = _$v.grid?.toBuilder();
      _dg = _$v.dg?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyReportResource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DailyReportResource;
  }

  @override
  void update(void Function(DailyReportResourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DailyReportResource build() {
    _$DailyReportResource _$result;
    try {
      _$result = _$v ??
          new _$DailyReportResource._(grid: grid.build(), dg: dg.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'grid';
        grid.build();
        _$failedField = 'dg';
        dg.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DailyReportResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

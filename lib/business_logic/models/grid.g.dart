// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Grid> _$gridSerializer = new _$GridSerializer();

class _$GridSerializer implements StructuredSerializer<Grid> {
  @override
  final Iterable<Type> types = const [Grid, _$Grid];
  @override
  final String wireName = 'Grid';

  @override
  Iterable<Object> serialize(Serializers serializers, Grid object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'grid_unit',
      serializers.serialize(object.grid_unit,
          specifiedType: const FullType(String)),
      'grid_amt',
      serializers.serialize(object.grid_amt,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Grid deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GridBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_unit':
          result.grid_unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_amt':
          result.grid_amt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Grid extends Grid {
  @override
  final String date;
  @override
  final String grid_unit;
  @override
  final double grid_amt;

  factory _$Grid([void Function(GridBuilder) updates]) =>
      (new GridBuilder()..update(updates)).build();

  _$Grid._({this.date, this.grid_unit, this.grid_amt}) : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('Grid', 'date');
    }
    if (grid_unit == null) {
      throw new BuiltValueNullFieldError('Grid', 'grid_unit');
    }
    if (grid_amt == null) {
      throw new BuiltValueNullFieldError('Grid', 'grid_amt');
    }
  }

  @override
  Grid rebuild(void Function(GridBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GridBuilder toBuilder() => new GridBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grid &&
        date == other.date &&
        grid_unit == other.grid_unit &&
        grid_amt == other.grid_amt;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, date.hashCode), grid_unit.hashCode), grid_amt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Grid')
          ..add('date', date)
          ..add('grid_unit', grid_unit)
          ..add('grid_amt', grid_amt))
        .toString();
  }
}

class GridBuilder implements Builder<Grid, GridBuilder> {
  _$Grid _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _grid_unit;
  String get grid_unit => _$this._grid_unit;
  set grid_unit(String grid_unit) => _$this._grid_unit = grid_unit;

  double _grid_amt;
  double get grid_amt => _$this._grid_amt;
  set grid_amt(double grid_amt) => _$this._grid_amt = grid_amt;

  GridBuilder();

  GridBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _grid_unit = _$v.grid_unit;
      _grid_amt = _$v.grid_amt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grid other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Grid;
  }

  @override
  void update(void Function(GridBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Grid build() {
    final _$result = _$v ??
        new _$Grid._(date: date, grid_unit: grid_unit, grid_amt: grid_amt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Grid _$GridFromJson(Map<String, dynamic> json) {
  return Grid();
}

Map<String, dynamic> _$GridToJson(Grid instance) => <String, dynamic>{};

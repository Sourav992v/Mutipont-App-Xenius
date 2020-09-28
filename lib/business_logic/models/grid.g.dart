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
      serializers.serialize(object.date,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'grid_unit',
      serializers.serialize(object.grid_unit,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'grid_amt',
      serializers.serialize(object.grid_amt,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
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
          result.date.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'grid_unit':
          result.grid_unit.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<Object>);
          break;
        case 'grid_amt':
          result.grid_amt.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Grid extends Grid {
  @override
  final BuiltList<int> date;
  @override
  final BuiltList<double> grid_unit;
  @override
  final BuiltList<double> grid_amt;

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

  ListBuilder<int> _date;
  ListBuilder<int> get date => _$this._date ??= new ListBuilder<int>();
  set date(ListBuilder<int> date) => _$this._date = date;

  ListBuilder<double> _grid_unit;
  ListBuilder<double> get grid_unit =>
      _$this._grid_unit ??= new ListBuilder<double>();
  set grid_unit(ListBuilder<double> grid_unit) => _$this._grid_unit = grid_unit;

  ListBuilder<double> _grid_amt;
  ListBuilder<double> get grid_amt =>
      _$this._grid_amt ??= new ListBuilder<double>();
  set grid_amt(ListBuilder<double> grid_amt) => _$this._grid_amt = grid_amt;

  GridBuilder();

  GridBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date?.toBuilder();
      _grid_unit = _$v.grid_unit?.toBuilder();
      _grid_amt = _$v.grid_amt?.toBuilder();
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
    _$Grid _$result;
    try {
      _$result = _$v ??
          new _$Grid._(
              date: date.build(),
              grid_unit: grid_unit.build(),
              grid_amt: grid_amt.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'date';
        date.build();
        _$failedField = 'grid_unit';
        grid_unit.build();
        _$failedField = 'grid_amt';
        grid_amt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Grid', _$failedField, e.toString());
      }
      rethrow;
    }
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

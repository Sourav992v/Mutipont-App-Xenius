// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_grid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MonthlyGrid> _$monthlyGridSerializer = new _$MonthlyGridSerializer();

class _$MonthlyGridSerializer implements StructuredSerializer<MonthlyGrid> {
  @override
  final Iterable<Type> types = const [MonthlyGrid, _$MonthlyGrid];
  @override
  final String wireName = 'MonthlyGrid';

  @override
  Iterable<Object> serialize(Serializers serializers, MonthlyGrid object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'month',
      serializers.serialize(object.month,
          specifiedType: const FullType(String)),
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
  MonthlyGrid deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonthlyGridBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'month':
          result.month = serializers.deserialize(value,
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

class _$MonthlyGrid extends MonthlyGrid {
  @override
  final String month;
  @override
  final String grid_unit;
  @override
  final double grid_amt;

  factory _$MonthlyGrid([void Function(MonthlyGridBuilder) updates]) =>
      (new MonthlyGridBuilder()..update(updates)).build();

  _$MonthlyGrid._({this.month, this.grid_unit, this.grid_amt}) : super._() {
    if (month == null) {
      throw new BuiltValueNullFieldError('MonthlyGrid', 'month');
    }
    if (grid_unit == null) {
      throw new BuiltValueNullFieldError('MonthlyGrid', 'grid_unit');
    }
    if (grid_amt == null) {
      throw new BuiltValueNullFieldError('MonthlyGrid', 'grid_amt');
    }
  }

  @override
  MonthlyGrid rebuild(void Function(MonthlyGridBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthlyGridBuilder toBuilder() => new MonthlyGridBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthlyGrid &&
        month == other.month &&
        grid_unit == other.grid_unit &&
        grid_amt == other.grid_amt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, month.hashCode), grid_unit.hashCode), grid_amt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MonthlyGrid')
          ..add('month', month)
          ..add('grid_unit', grid_unit)
          ..add('grid_amt', grid_amt))
        .toString();
  }
}

class MonthlyGridBuilder implements Builder<MonthlyGrid, MonthlyGridBuilder> {
  _$MonthlyGrid _$v;

  String _month;
  String get month => _$this._month;
  set month(String month) => _$this._month = month;

  String _grid_unit;
  String get grid_unit => _$this._grid_unit;
  set grid_unit(String grid_unit) => _$this._grid_unit = grid_unit;

  double _grid_amt;
  double get grid_amt => _$this._grid_amt;
  set grid_amt(double grid_amt) => _$this._grid_amt = grid_amt;

  MonthlyGridBuilder();

  MonthlyGridBuilder get _$this {
    if (_$v != null) {
      _month = _$v.month;
      _grid_unit = _$v.grid_unit;
      _grid_amt = _$v.grid_amt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthlyGrid other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MonthlyGrid;
  }

  @override
  void update(void Function(MonthlyGridBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MonthlyGrid build() {
    final _$result = _$v ??
        new _$MonthlyGrid._(
            month: month, grid_unit: grid_unit, grid_amt: grid_amt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

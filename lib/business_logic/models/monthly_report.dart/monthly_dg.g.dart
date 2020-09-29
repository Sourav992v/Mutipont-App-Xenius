// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_dg.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MonthlyDG> _$monthlyDGSerializer = new _$MonthlyDGSerializer();

class _$MonthlyDGSerializer implements StructuredSerializer<MonthlyDG> {
  @override
  final Iterable<Type> types = const [MonthlyDG, _$MonthlyDG];
  @override
  final String wireName = 'MonthlyDG';

  @override
  Iterable<Object> serialize(Serializers serializers, MonthlyDG object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'month',
      serializers.serialize(object.month,
          specifiedType: const FullType(String)),
      'dg_unit',
      serializers.serialize(object.dg_unit,
          specifiedType: const FullType(String)),
      'dg_amt',
      serializers.serialize(object.dg_amt,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  MonthlyDG deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonthlyDGBuilder();

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
        case 'dg_unit':
          result.dg_unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_amt':
          result.dg_amt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$MonthlyDG extends MonthlyDG {
  @override
  final String month;
  @override
  final String dg_unit;
  @override
  final double dg_amt;

  factory _$MonthlyDG([void Function(MonthlyDGBuilder) updates]) =>
      (new MonthlyDGBuilder()..update(updates)).build();

  _$MonthlyDG._({this.month, this.dg_unit, this.dg_amt}) : super._() {
    if (month == null) {
      throw new BuiltValueNullFieldError('MonthlyDG', 'month');
    }
    if (dg_unit == null) {
      throw new BuiltValueNullFieldError('MonthlyDG', 'dg_unit');
    }
    if (dg_amt == null) {
      throw new BuiltValueNullFieldError('MonthlyDG', 'dg_amt');
    }
  }

  @override
  MonthlyDG rebuild(void Function(MonthlyDGBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthlyDGBuilder toBuilder() => new MonthlyDGBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthlyDG &&
        month == other.month &&
        dg_unit == other.dg_unit &&
        dg_amt == other.dg_amt;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, month.hashCode), dg_unit.hashCode), dg_amt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MonthlyDG')
          ..add('month', month)
          ..add('dg_unit', dg_unit)
          ..add('dg_amt', dg_amt))
        .toString();
  }
}

class MonthlyDGBuilder implements Builder<MonthlyDG, MonthlyDGBuilder> {
  _$MonthlyDG _$v;

  String _month;
  String get month => _$this._month;
  set month(String month) => _$this._month = month;

  String _dg_unit;
  String get dg_unit => _$this._dg_unit;
  set dg_unit(String dg_unit) => _$this._dg_unit = dg_unit;

  double _dg_amt;
  double get dg_amt => _$this._dg_amt;
  set dg_amt(double dg_amt) => _$this._dg_amt = dg_amt;

  MonthlyDGBuilder();

  MonthlyDGBuilder get _$this {
    if (_$v != null) {
      _month = _$v.month;
      _dg_unit = _$v.dg_unit;
      _dg_amt = _$v.dg_amt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthlyDG other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MonthlyDG;
  }

  @override
  void update(void Function(MonthlyDGBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MonthlyDG build() {
    final _$result = _$v ??
        new _$MonthlyDG._(month: month, dg_unit: dg_unit, dg_amt: dg_amt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

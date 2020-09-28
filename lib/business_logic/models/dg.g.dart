// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dg.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Dg> _$dgSerializer = new _$DgSerializer();

class _$DgSerializer implements StructuredSerializer<Dg> {
  @override
  final Iterable<Type> types = const [Dg, _$Dg];
  @override
  final String wireName = 'Dg';

  @override
  Iterable<Object> serialize(Serializers serializers, Dg object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'dg_unit',
      serializers.serialize(object.dg_unit,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'dg_amt',
      serializers.serialize(object.dg_amt,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
    ];

    return result;
  }

  @override
  Dg deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DgBuilder();

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
        case 'dg_unit':
          result.dg_unit.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<Object>);
          break;
        case 'dg_amt':
          result.dg_amt.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Dg extends Dg {
  @override
  final BuiltList<int> date;
  @override
  final BuiltList<double> dg_unit;
  @override
  final BuiltList<double> dg_amt;

  factory _$Dg([void Function(DgBuilder) updates]) =>
      (new DgBuilder()..update(updates)).build();

  _$Dg._({this.date, this.dg_unit, this.dg_amt}) : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('Dg', 'date');
    }
    if (dg_unit == null) {
      throw new BuiltValueNullFieldError('Dg', 'dg_unit');
    }
    if (dg_amt == null) {
      throw new BuiltValueNullFieldError('Dg', 'dg_amt');
    }
  }

  @override
  Dg rebuild(void Function(DgBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DgBuilder toBuilder() => new DgBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dg &&
        date == other.date &&
        dg_unit == other.dg_unit &&
        dg_amt == other.dg_amt;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, date.hashCode), dg_unit.hashCode), dg_amt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Dg')
          ..add('date', date)
          ..add('dg_unit', dg_unit)
          ..add('dg_amt', dg_amt))
        .toString();
  }
}

class DgBuilder implements Builder<Dg, DgBuilder> {
  _$Dg _$v;

  ListBuilder<int> _date;
  ListBuilder<int> get date => _$this._date ??= new ListBuilder<int>();
  set date(ListBuilder<int> date) => _$this._date = date;

  ListBuilder<double> _dg_unit;
  ListBuilder<double> get dg_unit =>
      _$this._dg_unit ??= new ListBuilder<double>();
  set dg_unit(ListBuilder<double> dg_unit) => _$this._dg_unit = dg_unit;

  ListBuilder<double> _dg_amt;
  ListBuilder<double> get dg_amt =>
      _$this._dg_amt ??= new ListBuilder<double>();
  set dg_amt(ListBuilder<double> dg_amt) => _$this._dg_amt = dg_amt;

  DgBuilder();

  DgBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date?.toBuilder();
      _dg_unit = _$v.dg_unit?.toBuilder();
      _dg_amt = _$v.dg_amt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dg other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Dg;
  }

  @override
  void update(void Function(DgBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Dg build() {
    _$Dg _$result;
    try {
      _$result = _$v ??
          new _$Dg._(
              date: date.build(),
              dg_unit: dg_unit.build(),
              dg_amt: dg_amt.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'date';
        date.build();
        _$failedField = 'dg_unit';
        dg_unit.build();
        _$failedField = 'dg_amt';
        dg_amt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Dg', _$failedField, e.toString());
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

Dg _$DgFromJson(Map<String, dynamic> json) {
  return Dg();
}

Map<String, dynamic> _$DgToJson(Dg instance) => <String, dynamic>{};

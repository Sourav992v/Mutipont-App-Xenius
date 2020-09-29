// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_report_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MonthlyReportResponse> _$monthlyReportResponseSerializer =
    new _$MonthlyReportResponseSerializer();

class _$MonthlyReportResponseSerializer
    implements StructuredSerializer<MonthlyReportResponse> {
  @override
  final Iterable<Type> types = const [
    MonthlyReportResponse,
    _$MonthlyReportResponse
  ];
  @override
  final String wireName = 'MonthlyReportResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MonthlyReportResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'rc',
      serializers.serialize(object.rc, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'resource',
      serializers.serialize(object.resource,
          specifiedType: const FullType(MonthlyReportResource)),
    ];

    return result;
  }

  @override
  MonthlyReportResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonthlyReportResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rc':
          result.rc = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resource':
          result.resource.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MonthlyReportResource))
              as MonthlyReportResource);
          break;
      }
    }

    return result.build();
  }
}

class _$MonthlyReportResponse extends MonthlyReportResponse {
  @override
  final int rc;
  @override
  final String message;
  @override
  final MonthlyReportResource resource;

  factory _$MonthlyReportResponse(
          [void Function(MonthlyReportResponseBuilder) updates]) =>
      (new MonthlyReportResponseBuilder()..update(updates)).build();

  _$MonthlyReportResponse._({this.rc, this.message, this.resource})
      : super._() {
    if (rc == null) {
      throw new BuiltValueNullFieldError('MonthlyReportResponse', 'rc');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('MonthlyReportResponse', 'message');
    }
    if (resource == null) {
      throw new BuiltValueNullFieldError('MonthlyReportResponse', 'resource');
    }
  }

  @override
  MonthlyReportResponse rebuild(
          void Function(MonthlyReportResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthlyReportResponseBuilder toBuilder() =>
      new MonthlyReportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthlyReportResponse &&
        rc == other.rc &&
        message == other.message &&
        resource == other.resource;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, rc.hashCode), message.hashCode), resource.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MonthlyReportResponse')
          ..add('rc', rc)
          ..add('message', message)
          ..add('resource', resource))
        .toString();
  }
}

class MonthlyReportResponseBuilder
    implements Builder<MonthlyReportResponse, MonthlyReportResponseBuilder> {
  _$MonthlyReportResponse _$v;

  int _rc;
  int get rc => _$this._rc;
  set rc(int rc) => _$this._rc = rc;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  MonthlyReportResourceBuilder _resource;
  MonthlyReportResourceBuilder get resource =>
      _$this._resource ??= new MonthlyReportResourceBuilder();
  set resource(MonthlyReportResourceBuilder resource) =>
      _$this._resource = resource;

  MonthlyReportResponseBuilder();

  MonthlyReportResponseBuilder get _$this {
    if (_$v != null) {
      _rc = _$v.rc;
      _message = _$v.message;
      _resource = _$v.resource?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthlyReportResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MonthlyReportResponse;
  }

  @override
  void update(void Function(MonthlyReportResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MonthlyReportResponse build() {
    _$MonthlyReportResponse _$result;
    try {
      _$result = _$v ??
          new _$MonthlyReportResponse._(
              rc: rc, message: message, resource: resource.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'resource';
        resource.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MonthlyReportResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

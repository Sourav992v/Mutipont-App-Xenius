// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_report_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyReportResponse> _$dailyReportResponseSerializer =
    new _$DailyReportResponseSerializer();

class _$DailyReportResponseSerializer
    implements StructuredSerializer<DailyReportResponse> {
  @override
  final Iterable<Type> types = const [
    DailyReportResponse,
    _$DailyReportResponse
  ];
  @override
  final String wireName = 'DailyReportResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DailyReportResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'rc',
      serializers.serialize(object.rc, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'resource',
      serializers.serialize(object.resource,
          specifiedType: const FullType(DailyReportResource)),
    ];

    return result;
  }

  @override
  DailyReportResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyReportResponseBuilder();

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
                  specifiedType: const FullType(DailyReportResource))
              as DailyReportResource);
          break;
      }
    }

    return result.build();
  }
}

class _$DailyReportResponse extends DailyReportResponse {
  @override
  final int rc;
  @override
  final String message;
  @override
  final DailyReportResource resource;

  factory _$DailyReportResponse(
          [void Function(DailyReportResponseBuilder) updates]) =>
      (new DailyReportResponseBuilder()..update(updates)).build();

  _$DailyReportResponse._({this.rc, this.message, this.resource}) : super._() {
    if (rc == null) {
      throw new BuiltValueNullFieldError('DailyReportResponse', 'rc');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('DailyReportResponse', 'message');
    }
    if (resource == null) {
      throw new BuiltValueNullFieldError('DailyReportResponse', 'resource');
    }
  }

  @override
  DailyReportResponse rebuild(
          void Function(DailyReportResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyReportResponseBuilder toBuilder() =>
      new DailyReportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyReportResponse &&
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
    return (newBuiltValueToStringHelper('DailyReportResponse')
          ..add('rc', rc)
          ..add('message', message)
          ..add('resource', resource))
        .toString();
  }
}

class DailyReportResponseBuilder
    implements Builder<DailyReportResponse, DailyReportResponseBuilder> {
  _$DailyReportResponse _$v;

  int _rc;
  int get rc => _$this._rc;
  set rc(int rc) => _$this._rc = rc;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DailyReportResourceBuilder _resource;
  DailyReportResourceBuilder get resource =>
      _$this._resource ??= new DailyReportResourceBuilder();
  set resource(DailyReportResourceBuilder resource) =>
      _$this._resource = resource;

  DailyReportResponseBuilder();

  DailyReportResponseBuilder get _$this {
    if (_$v != null) {
      _rc = _$v.rc;
      _message = _$v.message;
      _resource = _$v.resource?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyReportResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DailyReportResponse;
  }

  @override
  void update(void Function(DailyReportResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DailyReportResponse build() {
    _$DailyReportResponse _$result;
    try {
      _$result = _$v ??
          new _$DailyReportResponse._(
              rc: rc, message: message, resource: resource.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'resource';
        resource.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DailyReportResponse', _$failedField, e.toString());
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

DailyReportResponse _$DailyReportResponseFromJson(Map<String, dynamic> json) {
  return DailyReportResponse();
}

Map<String, dynamic> _$DailyReportResponseToJson(
        DailyReportResponse instance) =>
    <String, dynamic>{};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResource> _$loginResourceSerializer =
    new _$LoginResourceSerializer();

class _$LoginResourceSerializer implements StructuredSerializer<LoginResource> {
  @override
  final Iterable<Type> types = const [LoginResource, _$LoginResource];
  @override
  final String wireName = 'LoginResource';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginResource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.rc != null) {
      result
        ..add('rc')
        ..add(serializers.serialize(object.rc,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.application != null) {
      result
        ..add('application')
        ..add(serializers.serialize(object.application,
            specifiedType: const FullType(String)));
    }
    if (object.app_base_url != null) {
      result
        ..add('app_base_url')
        ..add(serializers.serialize(object.app_base_url,
            specifiedType: const FullType(String)));
    }
    if (object.resource != null) {
      result
        ..add('resource')
        ..add(serializers.serialize(object.resource,
            specifiedType: const FullType(Resource)));
    }
    return result;
  }

  @override
  LoginResource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResourceBuilder();

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
        case 'application':
          result.application = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'app_base_url':
          result.app_base_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resource':
          result.resource.replace(serializers.deserialize(value,
              specifiedType: const FullType(Resource)) as Resource);
          break;
      }
    }

    return result.build();
  }
}

class _$LoginResource extends LoginResource {
  @override
  final int rc;
  @override
  final String message;
  @override
  final String application;
  @override
  final String app_base_url;
  @override
  final Resource resource;

  factory _$LoginResource([void Function(LoginResourceBuilder) updates]) =>
      (new LoginResourceBuilder()..update(updates)).build();

  _$LoginResource._(
      {this.rc,
      this.message,
      this.application,
      this.app_base_url,
      this.resource})
      : super._();

  @override
  LoginResource rebuild(void Function(LoginResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResourceBuilder toBuilder() => new LoginResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResource &&
        rc == other.rc &&
        message == other.message &&
        application == other.application &&
        app_base_url == other.app_base_url &&
        resource == other.resource;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, rc.hashCode), message.hashCode),
                application.hashCode),
            app_base_url.hashCode),
        resource.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResource')
          ..add('rc', rc)
          ..add('message', message)
          ..add('application', application)
          ..add('app_base_url', app_base_url)
          ..add('resource', resource))
        .toString();
  }
}

class LoginResourceBuilder
    implements Builder<LoginResource, LoginResourceBuilder> {
  _$LoginResource _$v;

  int _rc;
  int get rc => _$this._rc;
  set rc(int rc) => _$this._rc = rc;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _application;
  String get application => _$this._application;
  set application(String application) => _$this._application = application;

  String _app_base_url;
  String get app_base_url => _$this._app_base_url;
  set app_base_url(String app_base_url) => _$this._app_base_url = app_base_url;

  ResourceBuilder _resource;
  ResourceBuilder get resource => _$this._resource ??= new ResourceBuilder();
  set resource(ResourceBuilder resource) => _$this._resource = resource;

  LoginResourceBuilder();

  LoginResourceBuilder get _$this {
    if (_$v != null) {
      _rc = _$v.rc;
      _message = _$v.message;
      _application = _$v.application;
      _app_base_url = _$v.app_base_url;
      _resource = _$v.resource?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginResource;
  }

  @override
  void update(void Function(LoginResourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResource build() {
    _$LoginResource _$result;
    try {
      _$result = _$v ??
          new _$LoginResource._(
              rc: rc,
              message: message,
              application: application,
              app_base_url: app_base_url,
              resource: _resource?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'resource';
        _resource?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

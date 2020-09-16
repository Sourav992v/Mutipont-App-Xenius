import 'dart:async';
import 'dart:convert';
import 'package:chopper/chopper.dart';
import 'package:multipoint_app_xenius/business_logic/models/login_resource.dart';

class ModelConverter implements Converter {
  @override
  FutureOr<Request> convertRequest(Request request) {
    final req = applyHeader(
      request,
      contentTypeKey,
      jsonHeaders,
      override: false,
    );
    return encodeJson(req);
  }

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
      Response response) {
    return decodeJson<BodyType, InnerType>(response);
  }
}

FutureOr<Response> decodeJson<BodyType, InnerType>(Response response) {
  var contentType = response.headers[contentTypeKey];
  var body = response.body;
  if (contentType != null && contentType.contains(jsonHeaders)) {
    body = utf8.decode(response.bodyBytes);
  }
  try {
    var mapData = json.decode(body);
    var popular = LoginResource.fromJson(mapData);
    return response.copyWith<BodyType>(body: popular as BodyType);
  } catch (e) {
    chopperLogger.warning(e);
    return response.copyWith<BodyType>(body: body);
  }
}

FutureOr<Request> encodeJson(Request req) {
  var contentType = req.headers[contentTypeKey];
  if (contentType != null && contentType.contains(jsonHeaders)) {
    return req.copyWith(body: json.encode(req.body));
  }
  return req;
}

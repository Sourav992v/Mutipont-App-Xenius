import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:multipoint_app_xenius/business_logic/models/daily_report_response.dart';
import 'package:multipoint_app_xenius/business_logic/models/login_resource.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';

part 'serializers.g.dart';

@SerializersFor(const [LoginResource,Resource,DailyReportResponse])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
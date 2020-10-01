import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource.g.dart';

abstract class Resource implements Built<Resource, ResourceBuilder> {
  @nullable
  String get android_version;

  @nullable
  String get ios_version;

  @nullable
  String get mobile_app_status;

  @nullable
  String get location_id;

  @nullable
  String get login_count;

  @nullable
  String get device_app_ver;

  @nullable
  String get flat_number;

  @nullable
  String get consumer_name;

  @nullable
  String get consumer_mobile_no;

  @nullable
  String get consumer_email_id;

  @nullable
  String get balance_amount;

  @nullable
  String get dg_balance_amount;

  @nullable
  String get last_recharge_time;

  @nullable
  String get dg_last_recharge_time;

  @nullable
  String get last_coupon_number;

  @nullable
  String get dg_last_coupon_number;

  @nullable
  String get last_coupon_amount;

  @nullable
  String get dg_last_coupon_amount;

  @nullable
  String get dg_reading;

  @nullable
  String get grid_reading;

  @nullable
  String get dg_amt;

  @nullable
  String get grid_amt;

  @nullable
  String get last_reading_updated;

  @nullable
  String get dg_last_reading_updated;

  @nullable
  String get notification_email;

  @nullable
  String get notification_sms;

  @nullable
  String get bp_no;

  @nullable
  String get consumer_no;

  @nullable
  String get account_no;

  @nullable
  String get move_in_date;

  @nullable
  String get notification_ivrs;

  @nullable
  String get notification_app_load;

  @nullable
  String get notification_app_balance;

  @nullable
  String get low_bal_alert;

  @nullable
  String get dg_low_bal_alert;

  @nullable
  String get notification_app_esource;

  @nullable
  String get notification_app_unit_consumption;

  @nullable
  String get alert_daily_consumption_grid;

  @nullable
  String get alert_daily_consumption_dg;

  @nullable
  String get load_setting_enabled;

  @nullable
  String get power_cut_restore_notification;

  @nullable
  String get recharge_notification;

  @nullable
  String get grid_sanctioned_load;

  @nullable
  String get dg_sanctioned_load;

  @nullable
  String get load_unit;

  @nullable
  String get meter_type;

  @nullable
  String get grid_load_alarm;

  @nullable
  String get dg_load_alarm;

  @nullable
  String get grid_overload_setting;

  @nullable
  String get dg_overload_setting;

  @nullable
  String get grid_overload_from_time;

  @nullable
  String get grid_overload_to_time;

  @nullable
  String get dg_overload_from_time;

  @nullable
  String get dg_overload_to_time;

  @nullable
  String get overload_grid;

  @nullable
  String get overload_dg;

  @nullable
  String get site_id;

  @nullable
  String get site_name;

  @nullable
  String get site_address;

  @nullable
  String get site_city;

  @nullable
  String get site_state;

  @nullable
  String get site_country;

  @nullable
  String get site_zipcode;

  @nullable
  String get site_supervisor_name;

  @nullable
  String get site_supervisor_contact_no;

  @nullable
  String get site_supervisor_email_id;

  @nullable
  String get site_support_concern_name;

  @nullable
  String get site_support_contact_no;

  @nullable
  @JsonKey(name: 'site_support_email_id')
  String get site_support_email_id;
  @nullable
  @JsonKey(name: 'main_license')
  String get main_license;

  @nullable
  String get application;

  @nullable
  String get reading_unit;

  @nullable
  String get currency;

  @nullable
  String get site_code;

  @nullable
  String get balance_enable;

  @nullable
  String get reading_enable;

  @nullable
  String get monthly_bill_enable;

  @nullable
  String get monthly_bill_no_of_month;

  @nullable
  String get PLM;

  @nullable
  @JsonKey(name: 'pg_enable_paytm')
  String get pg_enable_paytm;

  @nullable
  String get pg_enable_mobikwik;

  @nullable
  String get paytmMobileUrl;

  @nullable
  String get mobikwik_mobile_url;

  @nullable
  String get pg_enable_hdfc;

  @nullable
  String get paytm_image;

  @nullable
  String get recharge_popup_message;

  @nullable
  String get energy_source;

  @nullable
  String get last_reading_updated_dg;

  @nullable
  String get display_load_setting_screen;

  @nullable
  double get daily_dg_unit;

  @nullable
  double get daily_grid_unit;

  @nullable
  double get monthly_dg_unit;

  @nullable
  double get monthly_grid_unit;

  @nullable
  double get daily_dg_amount;

  @nullable
  double get daily_grid_amount;

  @nullable
  double get monthly_dg_amount;

  @nullable
  double get monthly_grid_amount;

  @nullable
  double get fix_charges;

  @nullable
  double get dr_cr;

  @nullable
  double get fix_charges_monthly;

  @nullable
  double get dr_cr_monthly;

  @nullable
  double get dg_fix_charges_monthly;

  Resource._();

  factory Resource([updates(ResourceBuilder b)]) = _$Resource;

  static Serializer<Resource> get serializer => _$resourceSerializer;
}

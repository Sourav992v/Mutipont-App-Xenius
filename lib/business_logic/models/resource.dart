import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource.g.dart';

@JsonSerializable()
abstract class Resource implements Built<Resource, ResourceBuilder> {
  @nullable
  @JsonKey(name: 'android_version')
  String get android_version;

  @nullable
  @JsonKey(name: 'ios_version')
  String get ios_version;

  @nullable
  @JsonKey(name: 'mobile_app_status')
  String get mobile_app_status;

  @JsonKey(name: 'location_id')
  String get location_id;

  @JsonKey(name: 'login_count')
  String get login_count;

  @nullable
  @JsonKey(name: 'device_app_ver')
  String get device_app_ver;

  @JsonKey(name: 'flat_number')
  String get flat_number;

  @JsonKey(name: 'consumer_name')
  String get consumer_name;

  @JsonKey(name: 'consumer_mobile_no')
  String get consumer_mobile_no;

  @nullable
  @JsonKey(name: 'consumer_email_id')
  String get consumer_email_id;

  @JsonKey(name: 'balance_amount')
  String get balance_amount;

  @JsonKey(name: 'dg_balance_amount')
  String get dg_balance_amount;

  @nullable
  @JsonKey(name: 'last_recharge_time')
  String get last_recharge_time;

  @JsonKey(name: 'dg_last_recharge_time')
  String get dg_last_recharge_time;

  @nullable
  @JsonKey(name: 'last_coupon_number')
  String get last_coupon_number;

  @JsonKey(name: 'dg_last_coupon_number')
  String get dg_last_coupon_number;

  @JsonKey(name: 'last_coupon_amount')
  String get last_coupon_amount;

  @JsonKey(name: 'dg_last_coupon_amount')
  String get dg_last_coupon_amount;

  @JsonKey(name: 'dg_reading')
  String get dg_reading;

  @JsonKey(name: 'grid_reading')
  String get grid_reading;

  @JsonKey(name: 'dg_amt')
  String get dg_amt;

  @JsonKey(name: 'grid_amt')
  String get grid_amt;

  @JsonKey(name: 'last_reading_updated')
  String get last_reading_updated;

  @JsonKey(name: 'dg_last_reading_updated')
  String get dg_last_reading_updated;

  @JsonKey(name: 'notification_email')
  String get notification_email;

  @JsonKey(name: 'notification_sms')
  String get notification_sms;

  @JsonKey(name: 'bp_no')
  String get bp_no;

  @JsonKey(name: 'consumer_no')
  String get consumer_no;

  @JsonKey(name: 'account_no')
  String get account_no;

  @JsonKey(name: 'move_in_date')
  String get move_in_date;

  @JsonKey(name: 'notification_ivrs')
  String get notification_ivrs;

  @JsonKey(name: 'notification_app_load')
  String get notification_app_load;

  @JsonKey(name: 'notification_app_balance')
  String get notification_app_balance;

  @JsonKey(name: 'low_bal_alert')
  String get low_bal_alert;

  @JsonKey(name: 'dg_low_bal_alert')
  String get dg_low_bal_alert;

  @JsonKey(name: 'notification_app_esource')
  String get notification_app_esource;

  @JsonKey(name: 'notification_app_unit_consumption')
  String get notification_app_unit_consumption;

  @JsonKey(name: 'alert_daily_consumption_grid')
  String get alert_daily_consumption_grid;

  @JsonKey(name: 'alert_daily_consumption_dg')
  String get alert_daily_consumption_dg;

  @JsonKey(name: 'load_setting_enabled')
  String get load_setting_enabled;

  @JsonKey(name: 'power_cut_restore_notification')
  String get power_cut_restore_notification;

  @JsonKey(name: 'recharge_notification')
  String get recharge_notification;

  @JsonKey(name: 'grid_sanctioned_load')
  String get grid_sanctioned_load;

  @JsonKey(name: 'dg_sanctioned_load')
  String get dg_sanctioned_load;

  @JsonKey(name: 'load_unit')
  String get load_unit;

  @JsonKey(name: 'meter_type')
  String get meter_type;

  @JsonKey(name: 'grid_load_alarm')
  String get grid_load_alarm;

  @JsonKey(name: 'dg_load_alarm')
  String get dg_load_alarm;

  @JsonKey(name: 'grid_overload_setting')
  String get grid_overload_setting;

  @JsonKey(name: 'dg_overload_setting')
  String get dg_overload_setting;

  @JsonKey(name: 'grid_overload_from_time')
  String get grid_overload_from_time;

  @JsonKey(name: 'grid_overload_to_time')
  String get grid_overload_to_time;

  @JsonKey(name: 'dg_overload_from_time')
  String get dg_overload_from_time;

  @JsonKey(name: 'dg_overload_to_time')
  String get dg_overload_to_time;

  @JsonKey(name: 'overload_grid')
  String get overload_grid;

  @JsonKey(name: 'overload_dg')
  String get overload_dg;

  @JsonKey(name: 'site_id')
  String get site_id;

  @JsonKey(name: 'site_name')
  String get site_name;

  @JsonKey(name: 'site_address')
  String get site_address;

  @JsonKey(name: 'site_city')
  String get site_city;

  @JsonKey(name: 'site_state')
  String get site_state;

  @JsonKey(name: 'site_country')
  String get site_country;

  @JsonKey(name: 'site_zipcode')
  String get site_zipcode;

  @nullable
  @JsonKey(name: 'site_supervisor_name')
  String get site_supervisor_name;
  @nullable
  @JsonKey(name: 'site_supervisor_contact_no')
  String get site_supervisor_contact_no;
  @nullable
  @JsonKey(name: 'site_supervisor_email_id')
  String get site_supervisor_email_id;
  @nullable
  @JsonKey(name: 'site_support_concern_name')
  String get site_support_concern_name;
  @nullable
  @JsonKey(name: 'site_support_contact_no')
  String get site_support_contact_no;
  @nullable
  @JsonKey(name: 'site_support_email_id')
  String get site_support_email_id;
  @nullable
  @JsonKey(name: 'main_license')
  String get main_license;

  @JsonKey(name: 'application')
  String get application;

  @JsonKey(name: 'reading_unit')
  String get reading_unit;

  @JsonKey(name: 'currency')
  String get currency;

  @JsonKey(name: 'site_code')
  String get site_code;

  @JsonKey(name: 'balance_enable')
  String get balance_enable;

  @JsonKey(name: 'reading_enable')
  String get reading_enable;

  @JsonKey(name: 'monthly_bill_enable')
  String get monthly_bill_enable;

  @JsonKey(name: 'monthly_bill_no_of_month')
  String get monthly_bill_no_of_month;

  @JsonKey(name: 'PLM')
  String get PLM;

  @nullable
  @JsonKey(name: 'pg_enable_paytm')
  String get pg_enable_paytm;
  @nullable
  @JsonKey(name: 'pg_enable_mobikwik')
  String get pg_enable_mobikwik;
  @nullable
  @JsonKey(name: 'paytm_mobile_url')
  String get paytmMobileUrl;
  @nullable
  @JsonKey(name: 'mobikwik_mobile_url')
  String get mobikwik_mobile_url;

  @JsonKey(name: 'pg_enable_hdfc')
  String get pg_enable_hdfc;

  @JsonKey(name: 'paytm_image')
  String get paytm_image;
  @nullable
  @JsonKey(name: 'recharge_popup_message')
  String get recharge_popup_message;

  @JsonKey(name: 'energy_source')
  String get energy_source;

  @JsonKey(name: 'last_reading_updated_dg')
  String get last_reading_updated_dg;

  @JsonKey(name: 'display_load_setting_screen')
  String get display_load_setting_screen;

  @JsonKey(name: 'daily_dg_unit')
  double get daily_dg_unit;

  @JsonKey(name: 'daily_grid_unit')
  double get daily_grid_unit;

  @JsonKey(name: 'monthly_dg_unit')
  double get monthly_dg_unit;

  @JsonKey(name: 'monthly_grid_unit')
  double get monthly_grid_unit;

  @JsonKey(name: 'daily_dg_amount')
  double get daily_dg_amount;

  @JsonKey(name: 'daily_grid_amount')
  double get daily_grid_amount;

  @JsonKey(name: 'monthly_dg_amount')
  double get monthly_dg_amount;

  @JsonKey(name: 'monthly_grid_amount')
  double get monthly_grid_amount;

  @JsonKey(name: 'fix_charges')
  double get fix_charges;

  @JsonKey(name: 'dr_cr')
  double get dr_cr;

  @JsonKey(name: 'fix_charges_monthly')
  double get fix_charges_monthly;

  @JsonKey(name: 'dr_cr_monthly')
  String get dr_cr_monthly;

  @JsonKey(name: 'dg_fix_charges_monthly')
  double get dg_fix_charges_monthly;

  @JsonKey(name: 'dg_dr_cr_monthly')
  String get dg_dr_cr_monthly;

  Resource._();

  factory Resource([updates(ResourceBuilder b)]) = _$Resource;

  static Serializer<Resource> get serializer => _$resourceSerializer;
}

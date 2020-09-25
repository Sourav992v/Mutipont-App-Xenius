// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Resource> _$resourceSerializer = new _$ResourceSerializer();

class _$ResourceSerializer implements StructuredSerializer<Resource> {
  @override
  final Iterable<Type> types = const [Resource, _$Resource];
  @override
  final String wireName = 'Resource';

  @override
  Iterable<Object> serialize(Serializers serializers, Resource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.android_version != null) {
      result
        ..add('android_version')
        ..add(serializers.serialize(object.android_version,
            specifiedType: const FullType(String)));
    }
    if (object.ios_version != null) {
      result
        ..add('ios_version')
        ..add(serializers.serialize(object.ios_version,
            specifiedType: const FullType(String)));
    }
    if (object.mobile_app_status != null) {
      result
        ..add('mobile_app_status')
        ..add(serializers.serialize(object.mobile_app_status,
            specifiedType: const FullType(String)));
    }
    if (object.location_id != null) {
      result
        ..add('location_id')
        ..add(serializers.serialize(object.location_id,
            specifiedType: const FullType(String)));
    }
    if (object.login_count != null) {
      result
        ..add('login_count')
        ..add(serializers.serialize(object.login_count,
            specifiedType: const FullType(String)));
    }
    if (object.device_app_ver != null) {
      result
        ..add('device_app_ver')
        ..add(serializers.serialize(object.device_app_ver,
            specifiedType: const FullType(String)));
    }
    if (object.flat_number != null) {
      result
        ..add('flat_number')
        ..add(serializers.serialize(object.flat_number,
            specifiedType: const FullType(String)));
    }
    if (object.consumer_name != null) {
      result
        ..add('consumer_name')
        ..add(serializers.serialize(object.consumer_name,
            specifiedType: const FullType(String)));
    }
    if (object.consumer_mobile_no != null) {
      result
        ..add('consumer_mobile_no')
        ..add(serializers.serialize(object.consumer_mobile_no,
            specifiedType: const FullType(String)));
    }
    if (object.consumer_email_id != null) {
      result
        ..add('consumer_email_id')
        ..add(serializers.serialize(object.consumer_email_id,
            specifiedType: const FullType(String)));
    }
    if (object.balance_amount != null) {
      result
        ..add('balance_amount')
        ..add(serializers.serialize(object.balance_amount,
            specifiedType: const FullType(String)));
    }
    if (object.dg_balance_amount != null) {
      result
        ..add('dg_balance_amount')
        ..add(serializers.serialize(object.dg_balance_amount,
            specifiedType: const FullType(String)));
    }
    if (object.last_recharge_time != null) {
      result
        ..add('last_recharge_time')
        ..add(serializers.serialize(object.last_recharge_time,
            specifiedType: const FullType(String)));
    }
    if (object.dg_last_recharge_time != null) {
      result
        ..add('dg_last_recharge_time')
        ..add(serializers.serialize(object.dg_last_recharge_time,
            specifiedType: const FullType(String)));
    }
    if (object.last_coupon_number != null) {
      result
        ..add('last_coupon_number')
        ..add(serializers.serialize(object.last_coupon_number,
            specifiedType: const FullType(String)));
    }
    if (object.dg_last_coupon_number != null) {
      result
        ..add('dg_last_coupon_number')
        ..add(serializers.serialize(object.dg_last_coupon_number,
            specifiedType: const FullType(String)));
    }
    if (object.last_coupon_amount != null) {
      result
        ..add('last_coupon_amount')
        ..add(serializers.serialize(object.last_coupon_amount,
            specifiedType: const FullType(String)));
    }
    if (object.dg_last_coupon_amount != null) {
      result
        ..add('dg_last_coupon_amount')
        ..add(serializers.serialize(object.dg_last_coupon_amount,
            specifiedType: const FullType(String)));
    }
    if (object.dg_reading != null) {
      result
        ..add('dg_reading')
        ..add(serializers.serialize(object.dg_reading,
            specifiedType: const FullType(String)));
    }
    if (object.grid_reading != null) {
      result
        ..add('grid_reading')
        ..add(serializers.serialize(object.grid_reading,
            specifiedType: const FullType(String)));
    }
    if (object.dg_amt != null) {
      result
        ..add('dg_amt')
        ..add(serializers.serialize(object.dg_amt,
            specifiedType: const FullType(String)));
    }
    if (object.grid_amt != null) {
      result
        ..add('grid_amt')
        ..add(serializers.serialize(object.grid_amt,
            specifiedType: const FullType(String)));
    }
    if (object.last_reading_updated != null) {
      result
        ..add('last_reading_updated')
        ..add(serializers.serialize(object.last_reading_updated,
            specifiedType: const FullType(String)));
    }
    if (object.dg_last_reading_updated != null) {
      result
        ..add('dg_last_reading_updated')
        ..add(serializers.serialize(object.dg_last_reading_updated,
            specifiedType: const FullType(String)));
    }
    if (object.notification_email != null) {
      result
        ..add('notification_email')
        ..add(serializers.serialize(object.notification_email,
            specifiedType: const FullType(String)));
    }
    if (object.notification_sms != null) {
      result
        ..add('notification_sms')
        ..add(serializers.serialize(object.notification_sms,
            specifiedType: const FullType(String)));
    }
    if (object.bp_no != null) {
      result
        ..add('bp_no')
        ..add(serializers.serialize(object.bp_no,
            specifiedType: const FullType(String)));
    }
    if (object.consumer_no != null) {
      result
        ..add('consumer_no')
        ..add(serializers.serialize(object.consumer_no,
            specifiedType: const FullType(String)));
    }
    if (object.account_no != null) {
      result
        ..add('account_no')
        ..add(serializers.serialize(object.account_no,
            specifiedType: const FullType(String)));
    }
    if (object.move_in_date != null) {
      result
        ..add('move_in_date')
        ..add(serializers.serialize(object.move_in_date,
            specifiedType: const FullType(String)));
    }
    if (object.notification_ivrs != null) {
      result
        ..add('notification_ivrs')
        ..add(serializers.serialize(object.notification_ivrs,
            specifiedType: const FullType(String)));
    }
    if (object.notification_app_load != null) {
      result
        ..add('notification_app_load')
        ..add(serializers.serialize(object.notification_app_load,
            specifiedType: const FullType(String)));
    }
    if (object.notification_app_balance != null) {
      result
        ..add('notification_app_balance')
        ..add(serializers.serialize(object.notification_app_balance,
            specifiedType: const FullType(String)));
    }
    if (object.low_bal_alert != null) {
      result
        ..add('low_bal_alert')
        ..add(serializers.serialize(object.low_bal_alert,
            specifiedType: const FullType(String)));
    }
    if (object.dg_low_bal_alert != null) {
      result
        ..add('dg_low_bal_alert')
        ..add(serializers.serialize(object.dg_low_bal_alert,
            specifiedType: const FullType(String)));
    }
    if (object.notification_app_esource != null) {
      result
        ..add('notification_app_esource')
        ..add(serializers.serialize(object.notification_app_esource,
            specifiedType: const FullType(String)));
    }
    if (object.notification_app_unit_consumption != null) {
      result
        ..add('notification_app_unit_consumption')
        ..add(serializers.serialize(object.notification_app_unit_consumption,
            specifiedType: const FullType(String)));
    }
    if (object.alert_daily_consumption_grid != null) {
      result
        ..add('alert_daily_consumption_grid')
        ..add(serializers.serialize(object.alert_daily_consumption_grid,
            specifiedType: const FullType(String)));
    }
    if (object.alert_daily_consumption_dg != null) {
      result
        ..add('alert_daily_consumption_dg')
        ..add(serializers.serialize(object.alert_daily_consumption_dg,
            specifiedType: const FullType(String)));
    }
    if (object.load_setting_enabled != null) {
      result
        ..add('load_setting_enabled')
        ..add(serializers.serialize(object.load_setting_enabled,
            specifiedType: const FullType(String)));
    }
    if (object.power_cut_restore_notification != null) {
      result
        ..add('power_cut_restore_notification')
        ..add(serializers.serialize(object.power_cut_restore_notification,
            specifiedType: const FullType(String)));
    }
    if (object.recharge_notification != null) {
      result
        ..add('recharge_notification')
        ..add(serializers.serialize(object.recharge_notification,
            specifiedType: const FullType(String)));
    }
    if (object.grid_sanctioned_load != null) {
      result
        ..add('grid_sanctioned_load')
        ..add(serializers.serialize(object.grid_sanctioned_load,
            specifiedType: const FullType(String)));
    }
    if (object.dg_sanctioned_load != null) {
      result
        ..add('dg_sanctioned_load')
        ..add(serializers.serialize(object.dg_sanctioned_load,
            specifiedType: const FullType(String)));
    }
    if (object.load_unit != null) {
      result
        ..add('load_unit')
        ..add(serializers.serialize(object.load_unit,
            specifiedType: const FullType(String)));
    }
    if (object.meter_type != null) {
      result
        ..add('meter_type')
        ..add(serializers.serialize(object.meter_type,
            specifiedType: const FullType(String)));
    }
    if (object.grid_load_alarm != null) {
      result
        ..add('grid_load_alarm')
        ..add(serializers.serialize(object.grid_load_alarm,
            specifiedType: const FullType(String)));
    }
    if (object.dg_load_alarm != null) {
      result
        ..add('dg_load_alarm')
        ..add(serializers.serialize(object.dg_load_alarm,
            specifiedType: const FullType(String)));
    }
    if (object.grid_overload_setting != null) {
      result
        ..add('grid_overload_setting')
        ..add(serializers.serialize(object.grid_overload_setting,
            specifiedType: const FullType(String)));
    }
    if (object.dg_overload_setting != null) {
      result
        ..add('dg_overload_setting')
        ..add(serializers.serialize(object.dg_overload_setting,
            specifiedType: const FullType(String)));
    }
    if (object.grid_overload_from_time != null) {
      result
        ..add('grid_overload_from_time')
        ..add(serializers.serialize(object.grid_overload_from_time,
            specifiedType: const FullType(String)));
    }
    if (object.grid_overload_to_time != null) {
      result
        ..add('grid_overload_to_time')
        ..add(serializers.serialize(object.grid_overload_to_time,
            specifiedType: const FullType(String)));
    }
    if (object.dg_overload_from_time != null) {
      result
        ..add('dg_overload_from_time')
        ..add(serializers.serialize(object.dg_overload_from_time,
            specifiedType: const FullType(String)));
    }
    if (object.dg_overload_to_time != null) {
      result
        ..add('dg_overload_to_time')
        ..add(serializers.serialize(object.dg_overload_to_time,
            specifiedType: const FullType(String)));
    }
    if (object.overload_grid != null) {
      result
        ..add('overload_grid')
        ..add(serializers.serialize(object.overload_grid,
            specifiedType: const FullType(String)));
    }
    if (object.overload_dg != null) {
      result
        ..add('overload_dg')
        ..add(serializers.serialize(object.overload_dg,
            specifiedType: const FullType(String)));
    }
    if (object.site_id != null) {
      result
        ..add('site_id')
        ..add(serializers.serialize(object.site_id,
            specifiedType: const FullType(String)));
    }
    if (object.site_name != null) {
      result
        ..add('site_name')
        ..add(serializers.serialize(object.site_name,
            specifiedType: const FullType(String)));
    }
    if (object.site_address != null) {
      result
        ..add('site_address')
        ..add(serializers.serialize(object.site_address,
            specifiedType: const FullType(String)));
    }
    if (object.site_city != null) {
      result
        ..add('site_city')
        ..add(serializers.serialize(object.site_city,
            specifiedType: const FullType(String)));
    }
    if (object.site_state != null) {
      result
        ..add('site_state')
        ..add(serializers.serialize(object.site_state,
            specifiedType: const FullType(String)));
    }
    if (object.site_country != null) {
      result
        ..add('site_country')
        ..add(serializers.serialize(object.site_country,
            specifiedType: const FullType(String)));
    }
    if (object.site_zipcode != null) {
      result
        ..add('site_zipcode')
        ..add(serializers.serialize(object.site_zipcode,
            specifiedType: const FullType(String)));
    }
    if (object.site_supervisor_name != null) {
      result
        ..add('site_supervisor_name')
        ..add(serializers.serialize(object.site_supervisor_name,
            specifiedType: const FullType(String)));
    }
    if (object.site_supervisor_contact_no != null) {
      result
        ..add('site_supervisor_contact_no')
        ..add(serializers.serialize(object.site_supervisor_contact_no,
            specifiedType: const FullType(String)));
    }
    if (object.site_supervisor_email_id != null) {
      result
        ..add('site_supervisor_email_id')
        ..add(serializers.serialize(object.site_supervisor_email_id,
            specifiedType: const FullType(String)));
    }
    if (object.site_support_concern_name != null) {
      result
        ..add('site_support_concern_name')
        ..add(serializers.serialize(object.site_support_concern_name,
            specifiedType: const FullType(String)));
    }
    if (object.site_support_contact_no != null) {
      result
        ..add('site_support_contact_no')
        ..add(serializers.serialize(object.site_support_contact_no,
            specifiedType: const FullType(String)));
    }
    if (object.site_support_email_id != null) {
      result
        ..add('site_support_email_id')
        ..add(serializers.serialize(object.site_support_email_id,
            specifiedType: const FullType(String)));
    }
    if (object.main_license != null) {
      result
        ..add('main_license')
        ..add(serializers.serialize(object.main_license,
            specifiedType: const FullType(String)));
    }
    if (object.application != null) {
      result
        ..add('application')
        ..add(serializers.serialize(object.application,
            specifiedType: const FullType(String)));
    }
    if (object.reading_unit != null) {
      result
        ..add('reading_unit')
        ..add(serializers.serialize(object.reading_unit,
            specifiedType: const FullType(String)));
    }
    if (object.currency != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(object.currency,
            specifiedType: const FullType(String)));
    }
    if (object.site_code != null) {
      result
        ..add('site_code')
        ..add(serializers.serialize(object.site_code,
            specifiedType: const FullType(String)));
    }
    if (object.balance_enable != null) {
      result
        ..add('balance_enable')
        ..add(serializers.serialize(object.balance_enable,
            specifiedType: const FullType(String)));
    }
    if (object.reading_enable != null) {
      result
        ..add('reading_enable')
        ..add(serializers.serialize(object.reading_enable,
            specifiedType: const FullType(String)));
    }
    if (object.monthly_bill_enable != null) {
      result
        ..add('monthly_bill_enable')
        ..add(serializers.serialize(object.monthly_bill_enable,
            specifiedType: const FullType(String)));
    }
    if (object.monthly_bill_no_of_month != null) {
      result
        ..add('monthly_bill_no_of_month')
        ..add(serializers.serialize(object.monthly_bill_no_of_month,
            specifiedType: const FullType(String)));
    }
    if (object.PLM != null) {
      result
        ..add('PLM')
        ..add(serializers.serialize(object.PLM,
            specifiedType: const FullType(String)));
    }
    if (object.pg_enable_paytm != null) {
      result
        ..add('pg_enable_paytm')
        ..add(serializers.serialize(object.pg_enable_paytm,
            specifiedType: const FullType(String)));
    }
    if (object.pg_enable_mobikwik != null) {
      result
        ..add('pg_enable_mobikwik')
        ..add(serializers.serialize(object.pg_enable_mobikwik,
            specifiedType: const FullType(String)));
    }
    if (object.paytmMobileUrl != null) {
      result
        ..add('paytmMobileUrl')
        ..add(serializers.serialize(object.paytmMobileUrl,
            specifiedType: const FullType(String)));
    }
    if (object.mobikwik_mobile_url != null) {
      result
        ..add('mobikwik_mobile_url')
        ..add(serializers.serialize(object.mobikwik_mobile_url,
            specifiedType: const FullType(String)));
    }
    if (object.pg_enable_hdfc != null) {
      result
        ..add('pg_enable_hdfc')
        ..add(serializers.serialize(object.pg_enable_hdfc,
            specifiedType: const FullType(String)));
    }
    if (object.paytm_image != null) {
      result
        ..add('paytm_image')
        ..add(serializers.serialize(object.paytm_image,
            specifiedType: const FullType(String)));
    }
    if (object.recharge_popup_message != null) {
      result
        ..add('recharge_popup_message')
        ..add(serializers.serialize(object.recharge_popup_message,
            specifiedType: const FullType(String)));
    }
    if (object.energy_source != null) {
      result
        ..add('energy_source')
        ..add(serializers.serialize(object.energy_source,
            specifiedType: const FullType(String)));
    }
    if (object.last_reading_updated_dg != null) {
      result
        ..add('last_reading_updated_dg')
        ..add(serializers.serialize(object.last_reading_updated_dg,
            specifiedType: const FullType(String)));
    }
    if (object.display_load_setting_screen != null) {
      result
        ..add('display_load_setting_screen')
        ..add(serializers.serialize(object.display_load_setting_screen,
            specifiedType: const FullType(String)));
    }
    if (object.daily_dg_unit != null) {
      result
        ..add('daily_dg_unit')
        ..add(serializers.serialize(object.daily_dg_unit,
            specifiedType: const FullType(double)));
    }
    if (object.daily_grid_unit != null) {
      result
        ..add('daily_grid_unit')
        ..add(serializers.serialize(object.daily_grid_unit,
            specifiedType: const FullType(double)));
    }
    if (object.monthly_dg_unit != null) {
      result
        ..add('monthly_dg_unit')
        ..add(serializers.serialize(object.monthly_dg_unit,
            specifiedType: const FullType(double)));
    }
    if (object.monthly_grid_unit != null) {
      result
        ..add('monthly_grid_unit')
        ..add(serializers.serialize(object.monthly_grid_unit,
            specifiedType: const FullType(double)));
    }
    if (object.daily_dg_amount != null) {
      result
        ..add('daily_dg_amount')
        ..add(serializers.serialize(object.daily_dg_amount,
            specifiedType: const FullType(double)));
    }
    if (object.daily_grid_amount != null) {
      result
        ..add('daily_grid_amount')
        ..add(serializers.serialize(object.daily_grid_amount,
            specifiedType: const FullType(double)));
    }
    if (object.monthly_dg_amount != null) {
      result
        ..add('monthly_dg_amount')
        ..add(serializers.serialize(object.monthly_dg_amount,
            specifiedType: const FullType(double)));
    }
    if (object.monthly_grid_amount != null) {
      result
        ..add('monthly_grid_amount')
        ..add(serializers.serialize(object.monthly_grid_amount,
            specifiedType: const FullType(double)));
    }
    if (object.fix_charges != null) {
      result
        ..add('fix_charges')
        ..add(serializers.serialize(object.fix_charges,
            specifiedType: const FullType(double)));
    }
    if (object.dr_cr != null) {
      result
        ..add('dr_cr')
        ..add(serializers.serialize(object.dr_cr,
            specifiedType: const FullType(double)));
    }
    if (object.fix_charges_monthly != null) {
      result
        ..add('fix_charges_monthly')
        ..add(serializers.serialize(object.fix_charges_monthly,
            specifiedType: const FullType(double)));
    }
    if (object.dr_cr_monthly != null) {
      result
        ..add('dr_cr_monthly')
        ..add(serializers.serialize(object.dr_cr_monthly,
            specifiedType: const FullType(String)));
    }
    if (object.dg_fix_charges_monthly != null) {
      result
        ..add('dg_fix_charges_monthly')
        ..add(serializers.serialize(object.dg_fix_charges_monthly,
            specifiedType: const FullType(double)));
    }
    if (object.dg_dr_cr_monthly != null) {
      result
        ..add('dg_dr_cr_monthly')
        ..add(serializers.serialize(object.dg_dr_cr_monthly,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Resource deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'android_version':
          result.android_version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ios_version':
          result.ios_version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile_app_status':
          result.mobile_app_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location_id':
          result.location_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login_count':
          result.login_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'device_app_ver':
          result.device_app_ver = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'flat_number':
          result.flat_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'consumer_name':
          result.consumer_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'consumer_mobile_no':
          result.consumer_mobile_no = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'consumer_email_id':
          result.consumer_email_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'balance_amount':
          result.balance_amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_balance_amount':
          result.dg_balance_amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_recharge_time':
          result.last_recharge_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_last_recharge_time':
          result.dg_last_recharge_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_coupon_number':
          result.last_coupon_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_last_coupon_number':
          result.dg_last_coupon_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_coupon_amount':
          result.last_coupon_amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_last_coupon_amount':
          result.dg_last_coupon_amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_reading':
          result.dg_reading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_reading':
          result.grid_reading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_amt':
          result.dg_amt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_amt':
          result.grid_amt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_reading_updated':
          result.last_reading_updated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_last_reading_updated':
          result.dg_last_reading_updated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_email':
          result.notification_email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_sms':
          result.notification_sms = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bp_no':
          result.bp_no = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'consumer_no':
          result.consumer_no = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'account_no':
          result.account_no = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'move_in_date':
          result.move_in_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_ivrs':
          result.notification_ivrs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_app_load':
          result.notification_app_load = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_app_balance':
          result.notification_app_balance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'low_bal_alert':
          result.low_bal_alert = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_low_bal_alert':
          result.dg_low_bal_alert = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_app_esource':
          result.notification_app_esource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_app_unit_consumption':
          result.notification_app_unit_consumption = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alert_daily_consumption_grid':
          result.alert_daily_consumption_grid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alert_daily_consumption_dg':
          result.alert_daily_consumption_dg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'load_setting_enabled':
          result.load_setting_enabled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'power_cut_restore_notification':
          result.power_cut_restore_notification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recharge_notification':
          result.recharge_notification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_sanctioned_load':
          result.grid_sanctioned_load = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_sanctioned_load':
          result.dg_sanctioned_load = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'load_unit':
          result.load_unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'meter_type':
          result.meter_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_load_alarm':
          result.grid_load_alarm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_load_alarm':
          result.dg_load_alarm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_overload_setting':
          result.grid_overload_setting = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_overload_setting':
          result.dg_overload_setting = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_overload_from_time':
          result.grid_overload_from_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grid_overload_to_time':
          result.grid_overload_to_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_overload_from_time':
          result.dg_overload_from_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_overload_to_time':
          result.dg_overload_to_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overload_grid':
          result.overload_grid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overload_dg':
          result.overload_dg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_id':
          result.site_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_name':
          result.site_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_address':
          result.site_address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_city':
          result.site_city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_state':
          result.site_state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_country':
          result.site_country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_zipcode':
          result.site_zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_supervisor_name':
          result.site_supervisor_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_supervisor_contact_no':
          result.site_supervisor_contact_no = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_supervisor_email_id':
          result.site_supervisor_email_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_support_concern_name':
          result.site_support_concern_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_support_contact_no':
          result.site_support_contact_no = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_support_email_id':
          result.site_support_email_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'main_license':
          result.main_license = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'application':
          result.application = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reading_unit':
          result.reading_unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site_code':
          result.site_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'balance_enable':
          result.balance_enable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reading_enable':
          result.reading_enable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'monthly_bill_enable':
          result.monthly_bill_enable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'monthly_bill_no_of_month':
          result.monthly_bill_no_of_month = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PLM':
          result.PLM = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pg_enable_paytm':
          result.pg_enable_paytm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pg_enable_mobikwik':
          result.pg_enable_mobikwik = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paytmMobileUrl':
          result.paytmMobileUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobikwik_mobile_url':
          result.mobikwik_mobile_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pg_enable_hdfc':
          result.pg_enable_hdfc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paytm_image':
          result.paytm_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recharge_popup_message':
          result.recharge_popup_message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'energy_source':
          result.energy_source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_reading_updated_dg':
          result.last_reading_updated_dg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_load_setting_screen':
          result.display_load_setting_screen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'daily_dg_unit':
          result.daily_dg_unit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'daily_grid_unit':
          result.daily_grid_unit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'monthly_dg_unit':
          result.monthly_dg_unit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'monthly_grid_unit':
          result.monthly_grid_unit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'daily_dg_amount':
          result.daily_dg_amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'daily_grid_amount':
          result.daily_grid_amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'monthly_dg_amount':
          result.monthly_dg_amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'monthly_grid_amount':
          result.monthly_grid_amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'fix_charges':
          result.fix_charges = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dr_cr':
          result.dr_cr = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'fix_charges_monthly':
          result.fix_charges_monthly = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dr_cr_monthly':
          result.dr_cr_monthly = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dg_fix_charges_monthly':
          result.dg_fix_charges_monthly = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dg_dr_cr_monthly':
          result.dg_dr_cr_monthly = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Resource extends Resource {
  @override
  final String android_version;
  @override
  final String ios_version;
  @override
  final String mobile_app_status;
  @override
  final String location_id;
  @override
  final String login_count;
  @override
  final String device_app_ver;
  @override
  final String flat_number;
  @override
  final String consumer_name;
  @override
  final String consumer_mobile_no;
  @override
  final String consumer_email_id;
  @override
  final String balance_amount;
  @override
  final String dg_balance_amount;
  @override
  final String last_recharge_time;
  @override
  final String dg_last_recharge_time;
  @override
  final String last_coupon_number;
  @override
  final String dg_last_coupon_number;
  @override
  final String last_coupon_amount;
  @override
  final String dg_last_coupon_amount;
  @override
  final String dg_reading;
  @override
  final String grid_reading;
  @override
  final String dg_amt;
  @override
  final String grid_amt;
  @override
  final String last_reading_updated;
  @override
  final String dg_last_reading_updated;
  @override
  final String notification_email;
  @override
  final String notification_sms;
  @override
  final String bp_no;
  @override
  final String consumer_no;
  @override
  final String account_no;
  @override
  final String move_in_date;
  @override
  final String notification_ivrs;
  @override
  final String notification_app_load;
  @override
  final String notification_app_balance;
  @override
  final String low_bal_alert;
  @override
  final String dg_low_bal_alert;
  @override
  final String notification_app_esource;
  @override
  final String notification_app_unit_consumption;
  @override
  final String alert_daily_consumption_grid;
  @override
  final String alert_daily_consumption_dg;
  @override
  final String load_setting_enabled;
  @override
  final String power_cut_restore_notification;
  @override
  final String recharge_notification;
  @override
  final String grid_sanctioned_load;
  @override
  final String dg_sanctioned_load;
  @override
  final String load_unit;
  @override
  final String meter_type;
  @override
  final String grid_load_alarm;
  @override
  final String dg_load_alarm;
  @override
  final String grid_overload_setting;
  @override
  final String dg_overload_setting;
  @override
  final String grid_overload_from_time;
  @override
  final String grid_overload_to_time;
  @override
  final String dg_overload_from_time;
  @override
  final String dg_overload_to_time;
  @override
  final String overload_grid;
  @override
  final String overload_dg;
  @override
  final String site_id;
  @override
  final String site_name;
  @override
  final String site_address;
  @override
  final String site_city;
  @override
  final String site_state;
  @override
  final String site_country;
  @override
  final String site_zipcode;
  @override
  final String site_supervisor_name;
  @override
  final String site_supervisor_contact_no;
  @override
  final String site_supervisor_email_id;
  @override
  final String site_support_concern_name;
  @override
  final String site_support_contact_no;
  @override
  final String site_support_email_id;
  @override
  final String main_license;
  @override
  final String application;
  @override
  final String reading_unit;
  @override
  final String currency;
  @override
  final String site_code;
  @override
  final String balance_enable;
  @override
  final String reading_enable;
  @override
  final String monthly_bill_enable;
  @override
  final String monthly_bill_no_of_month;
  @override
  final String PLM;
  @override
  final String pg_enable_paytm;
  @override
  final String pg_enable_mobikwik;
  @override
  final String paytmMobileUrl;
  @override
  final String mobikwik_mobile_url;
  @override
  final String pg_enable_hdfc;
  @override
  final String paytm_image;
  @override
  final String recharge_popup_message;
  @override
  final String energy_source;
  @override
  final String last_reading_updated_dg;
  @override
  final String display_load_setting_screen;
  @override
  final double daily_dg_unit;
  @override
  final double daily_grid_unit;
  @override
  final double monthly_dg_unit;
  @override
  final double monthly_grid_unit;
  @override
  final double daily_dg_amount;
  @override
  final double daily_grid_amount;
  @override
  final double monthly_dg_amount;
  @override
  final double monthly_grid_amount;
  @override
  final double fix_charges;
  @override
  final double dr_cr;
  @override
  final double fix_charges_monthly;
  @override
  final String dr_cr_monthly;
  @override
  final double dg_fix_charges_monthly;
  @override
  final String dg_dr_cr_monthly;

  factory _$Resource([void Function(ResourceBuilder) updates]) =>
      (new ResourceBuilder()..update(updates)).build();

  _$Resource._(
      {this.android_version,
      this.ios_version,
      this.mobile_app_status,
      this.location_id,
      this.login_count,
      this.device_app_ver,
      this.flat_number,
      this.consumer_name,
      this.consumer_mobile_no,
      this.consumer_email_id,
      this.balance_amount,
      this.dg_balance_amount,
      this.last_recharge_time,
      this.dg_last_recharge_time,
      this.last_coupon_number,
      this.dg_last_coupon_number,
      this.last_coupon_amount,
      this.dg_last_coupon_amount,
      this.dg_reading,
      this.grid_reading,
      this.dg_amt,
      this.grid_amt,
      this.last_reading_updated,
      this.dg_last_reading_updated,
      this.notification_email,
      this.notification_sms,
      this.bp_no,
      this.consumer_no,
      this.account_no,
      this.move_in_date,
      this.notification_ivrs,
      this.notification_app_load,
      this.notification_app_balance,
      this.low_bal_alert,
      this.dg_low_bal_alert,
      this.notification_app_esource,
      this.notification_app_unit_consumption,
      this.alert_daily_consumption_grid,
      this.alert_daily_consumption_dg,
      this.load_setting_enabled,
      this.power_cut_restore_notification,
      this.recharge_notification,
      this.grid_sanctioned_load,
      this.dg_sanctioned_load,
      this.load_unit,
      this.meter_type,
      this.grid_load_alarm,
      this.dg_load_alarm,
      this.grid_overload_setting,
      this.dg_overload_setting,
      this.grid_overload_from_time,
      this.grid_overload_to_time,
      this.dg_overload_from_time,
      this.dg_overload_to_time,
      this.overload_grid,
      this.overload_dg,
      this.site_id,
      this.site_name,
      this.site_address,
      this.site_city,
      this.site_state,
      this.site_country,
      this.site_zipcode,
      this.site_supervisor_name,
      this.site_supervisor_contact_no,
      this.site_supervisor_email_id,
      this.site_support_concern_name,
      this.site_support_contact_no,
      this.site_support_email_id,
      this.main_license,
      this.application,
      this.reading_unit,
      this.currency,
      this.site_code,
      this.balance_enable,
      this.reading_enable,
      this.monthly_bill_enable,
      this.monthly_bill_no_of_month,
      this.PLM,
      this.pg_enable_paytm,
      this.pg_enable_mobikwik,
      this.paytmMobileUrl,
      this.mobikwik_mobile_url,
      this.pg_enable_hdfc,
      this.paytm_image,
      this.recharge_popup_message,
      this.energy_source,
      this.last_reading_updated_dg,
      this.display_load_setting_screen,
      this.daily_dg_unit,
      this.daily_grid_unit,
      this.monthly_dg_unit,
      this.monthly_grid_unit,
      this.daily_dg_amount,
      this.daily_grid_amount,
      this.monthly_dg_amount,
      this.monthly_grid_amount,
      this.fix_charges,
      this.dr_cr,
      this.fix_charges_monthly,
      this.dr_cr_monthly,
      this.dg_fix_charges_monthly,
      this.dg_dr_cr_monthly})
      : super._();

  @override
  Resource rebuild(void Function(ResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceBuilder toBuilder() => new ResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Resource &&
        android_version == other.android_version &&
        ios_version == other.ios_version &&
        mobile_app_status == other.mobile_app_status &&
        location_id == other.location_id &&
        login_count == other.login_count &&
        device_app_ver == other.device_app_ver &&
        flat_number == other.flat_number &&
        consumer_name == other.consumer_name &&
        consumer_mobile_no == other.consumer_mobile_no &&
        consumer_email_id == other.consumer_email_id &&
        balance_amount == other.balance_amount &&
        dg_balance_amount == other.dg_balance_amount &&
        last_recharge_time == other.last_recharge_time &&
        dg_last_recharge_time == other.dg_last_recharge_time &&
        last_coupon_number == other.last_coupon_number &&
        dg_last_coupon_number == other.dg_last_coupon_number &&
        last_coupon_amount == other.last_coupon_amount &&
        dg_last_coupon_amount == other.dg_last_coupon_amount &&
        dg_reading == other.dg_reading &&
        grid_reading == other.grid_reading &&
        dg_amt == other.dg_amt &&
        grid_amt == other.grid_amt &&
        last_reading_updated == other.last_reading_updated &&
        dg_last_reading_updated == other.dg_last_reading_updated &&
        notification_email == other.notification_email &&
        notification_sms == other.notification_sms &&
        bp_no == other.bp_no &&
        consumer_no == other.consumer_no &&
        account_no == other.account_no &&
        move_in_date == other.move_in_date &&
        notification_ivrs == other.notification_ivrs &&
        notification_app_load == other.notification_app_load &&
        notification_app_balance == other.notification_app_balance &&
        low_bal_alert == other.low_bal_alert &&
        dg_low_bal_alert == other.dg_low_bal_alert &&
        notification_app_esource == other.notification_app_esource &&
        notification_app_unit_consumption ==
            other.notification_app_unit_consumption &&
        alert_daily_consumption_grid == other.alert_daily_consumption_grid &&
        alert_daily_consumption_dg == other.alert_daily_consumption_dg &&
        load_setting_enabled == other.load_setting_enabled &&
        power_cut_restore_notification ==
            other.power_cut_restore_notification &&
        recharge_notification == other.recharge_notification &&
        grid_sanctioned_load == other.grid_sanctioned_load &&
        dg_sanctioned_load == other.dg_sanctioned_load &&
        load_unit == other.load_unit &&
        meter_type == other.meter_type &&
        grid_load_alarm == other.grid_load_alarm &&
        dg_load_alarm == other.dg_load_alarm &&
        grid_overload_setting == other.grid_overload_setting &&
        dg_overload_setting == other.dg_overload_setting &&
        grid_overload_from_time == other.grid_overload_from_time &&
        grid_overload_to_time == other.grid_overload_to_time &&
        dg_overload_from_time == other.dg_overload_from_time &&
        dg_overload_to_time == other.dg_overload_to_time &&
        overload_grid == other.overload_grid &&
        overload_dg == other.overload_dg &&
        site_id == other.site_id &&
        site_name == other.site_name &&
        site_address == other.site_address &&
        site_city == other.site_city &&
        site_state == other.site_state &&
        site_country == other.site_country &&
        site_zipcode == other.site_zipcode &&
        site_supervisor_name == other.site_supervisor_name &&
        site_supervisor_contact_no == other.site_supervisor_contact_no &&
        site_supervisor_email_id == other.site_supervisor_email_id &&
        site_support_concern_name == other.site_support_concern_name &&
        site_support_contact_no == other.site_support_contact_no &&
        site_support_email_id == other.site_support_email_id &&
        main_license == other.main_license &&
        application == other.application &&
        reading_unit == other.reading_unit &&
        currency == other.currency &&
        site_code == other.site_code &&
        balance_enable == other.balance_enable &&
        reading_enable == other.reading_enable &&
        monthly_bill_enable == other.monthly_bill_enable &&
        monthly_bill_no_of_month == other.monthly_bill_no_of_month &&
        PLM == other.PLM &&
        pg_enable_paytm == other.pg_enable_paytm &&
        pg_enable_mobikwik == other.pg_enable_mobikwik &&
        paytmMobileUrl == other.paytmMobileUrl &&
        mobikwik_mobile_url == other.mobikwik_mobile_url &&
        pg_enable_hdfc == other.pg_enable_hdfc &&
        paytm_image == other.paytm_image &&
        recharge_popup_message == other.recharge_popup_message &&
        energy_source == other.energy_source &&
        last_reading_updated_dg == other.last_reading_updated_dg &&
        display_load_setting_screen == other.display_load_setting_screen &&
        daily_dg_unit == other.daily_dg_unit &&
        daily_grid_unit == other.daily_grid_unit &&
        monthly_dg_unit == other.monthly_dg_unit &&
        monthly_grid_unit == other.monthly_grid_unit &&
        daily_dg_amount == other.daily_dg_amount &&
        daily_grid_amount == other.daily_grid_amount &&
        monthly_dg_amount == other.monthly_dg_amount &&
        monthly_grid_amount == other.monthly_grid_amount &&
        fix_charges == other.fix_charges &&
        dr_cr == other.dr_cr &&
        fix_charges_monthly == other.fix_charges_monthly &&
        dr_cr_monthly == other.dr_cr_monthly &&
        dg_fix_charges_monthly == other.dg_fix_charges_monthly &&
        dg_dr_cr_monthly == other.dg_dr_cr_monthly;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, android_version.hashCode), ios_version.hashCode), mobile_app_status.hashCode), location_id.hashCode), login_count.hashCode), device_app_ver.hashCode), flat_number.hashCode), consumer_name.hashCode), consumer_mobile_no.hashCode), consumer_email_id.hashCode), balance_amount.hashCode), dg_balance_amount.hashCode), last_recharge_time.hashCode), dg_last_recharge_time.hashCode), last_coupon_number.hashCode), dg_last_coupon_number.hashCode), last_coupon_amount.hashCode), dg_last_coupon_amount.hashCode), dg_reading.hashCode), grid_reading.hashCode), dg_amt.hashCode), grid_amt.hashCode), last_reading_updated.hashCode), dg_last_reading_updated.hashCode), notification_email.hashCode), notification_sms.hashCode), bp_no.hashCode), consumer_no.hashCode), account_no.hashCode), move_in_date.hashCode), notification_ivrs.hashCode), notification_app_load.hashCode), notification_app_balance.hashCode), low_bal_alert.hashCode), dg_low_bal_alert.hashCode), notification_app_esource.hashCode), notification_app_unit_consumption.hashCode), alert_daily_consumption_grid.hashCode), alert_daily_consumption_dg.hashCode), load_setting_enabled.hashCode), power_cut_restore_notification.hashCode), recharge_notification.hashCode), grid_sanctioned_load.hashCode), dg_sanctioned_load.hashCode), load_unit.hashCode), meter_type.hashCode), grid_load_alarm.hashCode), dg_load_alarm.hashCode), grid_overload_setting.hashCode), dg_overload_setting.hashCode), grid_overload_from_time.hashCode), grid_overload_to_time.hashCode), dg_overload_from_time.hashCode), dg_overload_to_time.hashCode), overload_grid.hashCode), overload_dg.hashCode), site_id.hashCode), site_name.hashCode), site_address.hashCode), site_city.hashCode), site_state.hashCode), site_country.hashCode), site_zipcode.hashCode), site_supervisor_name.hashCode), site_supervisor_contact_no.hashCode), site_supervisor_email_id.hashCode), site_support_concern_name.hashCode), site_support_contact_no.hashCode), site_support_email_id.hashCode), main_license.hashCode), application.hashCode), reading_unit.hashCode), currency.hashCode), site_code.hashCode), balance_enable.hashCode), reading_enable.hashCode), monthly_bill_enable.hashCode), monthly_bill_no_of_month.hashCode), PLM.hashCode), pg_enable_paytm.hashCode), pg_enable_mobikwik.hashCode), paytmMobileUrl.hashCode), mobikwik_mobile_url.hashCode), pg_enable_hdfc.hashCode),
                                                                                paytm_image.hashCode),
                                                                            recharge_popup_message.hashCode),
                                                                        energy_source.hashCode),
                                                                    last_reading_updated_dg.hashCode),
                                                                display_load_setting_screen.hashCode),
                                                            daily_dg_unit.hashCode),
                                                        daily_grid_unit.hashCode),
                                                    monthly_dg_unit.hashCode),
                                                monthly_grid_unit.hashCode),
                                            daily_dg_amount.hashCode),
                                        daily_grid_amount.hashCode),
                                    monthly_dg_amount.hashCode),
                                monthly_grid_amount.hashCode),
                            fix_charges.hashCode),
                        dr_cr.hashCode),
                    fix_charges_monthly.hashCode),
                dr_cr_monthly.hashCode),
            dg_fix_charges_monthly.hashCode),
        dg_dr_cr_monthly.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Resource')
          ..add('android_version', android_version)
          ..add('ios_version', ios_version)
          ..add('mobile_app_status', mobile_app_status)
          ..add('location_id', location_id)
          ..add('login_count', login_count)
          ..add('device_app_ver', device_app_ver)
          ..add('flat_number', flat_number)
          ..add('consumer_name', consumer_name)
          ..add('consumer_mobile_no', consumer_mobile_no)
          ..add('consumer_email_id', consumer_email_id)
          ..add('balance_amount', balance_amount)
          ..add('dg_balance_amount', dg_balance_amount)
          ..add('last_recharge_time', last_recharge_time)
          ..add('dg_last_recharge_time', dg_last_recharge_time)
          ..add('last_coupon_number', last_coupon_number)
          ..add('dg_last_coupon_number', dg_last_coupon_number)
          ..add('last_coupon_amount', last_coupon_amount)
          ..add('dg_last_coupon_amount', dg_last_coupon_amount)
          ..add('dg_reading', dg_reading)
          ..add('grid_reading', grid_reading)
          ..add('dg_amt', dg_amt)
          ..add('grid_amt', grid_amt)
          ..add('last_reading_updated', last_reading_updated)
          ..add('dg_last_reading_updated', dg_last_reading_updated)
          ..add('notification_email', notification_email)
          ..add('notification_sms', notification_sms)
          ..add('bp_no', bp_no)
          ..add('consumer_no', consumer_no)
          ..add('account_no', account_no)
          ..add('move_in_date', move_in_date)
          ..add('notification_ivrs', notification_ivrs)
          ..add('notification_app_load', notification_app_load)
          ..add('notification_app_balance', notification_app_balance)
          ..add('low_bal_alert', low_bal_alert)
          ..add('dg_low_bal_alert', dg_low_bal_alert)
          ..add('notification_app_esource', notification_app_esource)
          ..add('notification_app_unit_consumption',
              notification_app_unit_consumption)
          ..add('alert_daily_consumption_grid', alert_daily_consumption_grid)
          ..add('alert_daily_consumption_dg', alert_daily_consumption_dg)
          ..add('load_setting_enabled', load_setting_enabled)
          ..add(
              'power_cut_restore_notification', power_cut_restore_notification)
          ..add('recharge_notification', recharge_notification)
          ..add('grid_sanctioned_load', grid_sanctioned_load)
          ..add('dg_sanctioned_load', dg_sanctioned_load)
          ..add('load_unit', load_unit)
          ..add('meter_type', meter_type)
          ..add('grid_load_alarm', grid_load_alarm)
          ..add('dg_load_alarm', dg_load_alarm)
          ..add('grid_overload_setting', grid_overload_setting)
          ..add('dg_overload_setting', dg_overload_setting)
          ..add('grid_overload_from_time', grid_overload_from_time)
          ..add('grid_overload_to_time', grid_overload_to_time)
          ..add('dg_overload_from_time', dg_overload_from_time)
          ..add('dg_overload_to_time', dg_overload_to_time)
          ..add('overload_grid', overload_grid)
          ..add('overload_dg', overload_dg)
          ..add('site_id', site_id)
          ..add('site_name', site_name)
          ..add('site_address', site_address)
          ..add('site_city', site_city)
          ..add('site_state', site_state)
          ..add('site_country', site_country)
          ..add('site_zipcode', site_zipcode)
          ..add('site_supervisor_name', site_supervisor_name)
          ..add('site_supervisor_contact_no', site_supervisor_contact_no)
          ..add('site_supervisor_email_id', site_supervisor_email_id)
          ..add('site_support_concern_name', site_support_concern_name)
          ..add('site_support_contact_no', site_support_contact_no)
          ..add('site_support_email_id', site_support_email_id)
          ..add('main_license', main_license)
          ..add('application', application)
          ..add('reading_unit', reading_unit)
          ..add('currency', currency)
          ..add('site_code', site_code)
          ..add('balance_enable', balance_enable)
          ..add('reading_enable', reading_enable)
          ..add('monthly_bill_enable', monthly_bill_enable)
          ..add('monthly_bill_no_of_month', monthly_bill_no_of_month)
          ..add('PLM', PLM)
          ..add('pg_enable_paytm', pg_enable_paytm)
          ..add('pg_enable_mobikwik', pg_enable_mobikwik)
          ..add('paytmMobileUrl', paytmMobileUrl)
          ..add('mobikwik_mobile_url', mobikwik_mobile_url)
          ..add('pg_enable_hdfc', pg_enable_hdfc)
          ..add('paytm_image', paytm_image)
          ..add('recharge_popup_message', recharge_popup_message)
          ..add('energy_source', energy_source)
          ..add('last_reading_updated_dg', last_reading_updated_dg)
          ..add('display_load_setting_screen', display_load_setting_screen)
          ..add('daily_dg_unit', daily_dg_unit)
          ..add('daily_grid_unit', daily_grid_unit)
          ..add('monthly_dg_unit', monthly_dg_unit)
          ..add('monthly_grid_unit', monthly_grid_unit)
          ..add('daily_dg_amount', daily_dg_amount)
          ..add('daily_grid_amount', daily_grid_amount)
          ..add('monthly_dg_amount', monthly_dg_amount)
          ..add('monthly_grid_amount', monthly_grid_amount)
          ..add('fix_charges', fix_charges)
          ..add('dr_cr', dr_cr)
          ..add('fix_charges_monthly', fix_charges_monthly)
          ..add('dr_cr_monthly', dr_cr_monthly)
          ..add('dg_fix_charges_monthly', dg_fix_charges_monthly)
          ..add('dg_dr_cr_monthly', dg_dr_cr_monthly))
        .toString();
  }
}

class ResourceBuilder implements Builder<Resource, ResourceBuilder> {
  _$Resource _$v;

  String _android_version;
  String get android_version => _$this._android_version;
  set android_version(String android_version) =>
      _$this._android_version = android_version;

  String _ios_version;
  String get ios_version => _$this._ios_version;
  set ios_version(String ios_version) => _$this._ios_version = ios_version;

  String _mobile_app_status;
  String get mobile_app_status => _$this._mobile_app_status;
  set mobile_app_status(String mobile_app_status) =>
      _$this._mobile_app_status = mobile_app_status;

  String _location_id;
  String get location_id => _$this._location_id;
  set location_id(String location_id) => _$this._location_id = location_id;

  String _login_count;
  String get login_count => _$this._login_count;
  set login_count(String login_count) => _$this._login_count = login_count;

  String _device_app_ver;
  String get device_app_ver => _$this._device_app_ver;
  set device_app_ver(String device_app_ver) =>
      _$this._device_app_ver = device_app_ver;

  String _flat_number;
  String get flat_number => _$this._flat_number;
  set flat_number(String flat_number) => _$this._flat_number = flat_number;

  String _consumer_name;
  String get consumer_name => _$this._consumer_name;
  set consumer_name(String consumer_name) =>
      _$this._consumer_name = consumer_name;

  String _consumer_mobile_no;
  String get consumer_mobile_no => _$this._consumer_mobile_no;
  set consumer_mobile_no(String consumer_mobile_no) =>
      _$this._consumer_mobile_no = consumer_mobile_no;

  String _consumer_email_id;
  String get consumer_email_id => _$this._consumer_email_id;
  set consumer_email_id(String consumer_email_id) =>
      _$this._consumer_email_id = consumer_email_id;

  String _balance_amount;
  String get balance_amount => _$this._balance_amount;
  set balance_amount(String balance_amount) =>
      _$this._balance_amount = balance_amount;

  String _dg_balance_amount;
  String get dg_balance_amount => _$this._dg_balance_amount;
  set dg_balance_amount(String dg_balance_amount) =>
      _$this._dg_balance_amount = dg_balance_amount;

  String _last_recharge_time;
  String get last_recharge_time => _$this._last_recharge_time;
  set last_recharge_time(String last_recharge_time) =>
      _$this._last_recharge_time = last_recharge_time;

  String _dg_last_recharge_time;
  String get dg_last_recharge_time => _$this._dg_last_recharge_time;
  set dg_last_recharge_time(String dg_last_recharge_time) =>
      _$this._dg_last_recharge_time = dg_last_recharge_time;

  String _last_coupon_number;
  String get last_coupon_number => _$this._last_coupon_number;
  set last_coupon_number(String last_coupon_number) =>
      _$this._last_coupon_number = last_coupon_number;

  String _dg_last_coupon_number;
  String get dg_last_coupon_number => _$this._dg_last_coupon_number;
  set dg_last_coupon_number(String dg_last_coupon_number) =>
      _$this._dg_last_coupon_number = dg_last_coupon_number;

  String _last_coupon_amount;
  String get last_coupon_amount => _$this._last_coupon_amount;
  set last_coupon_amount(String last_coupon_amount) =>
      _$this._last_coupon_amount = last_coupon_amount;

  String _dg_last_coupon_amount;
  String get dg_last_coupon_amount => _$this._dg_last_coupon_amount;
  set dg_last_coupon_amount(String dg_last_coupon_amount) =>
      _$this._dg_last_coupon_amount = dg_last_coupon_amount;

  String _dg_reading;
  String get dg_reading => _$this._dg_reading;
  set dg_reading(String dg_reading) => _$this._dg_reading = dg_reading;

  String _grid_reading;
  String get grid_reading => _$this._grid_reading;
  set grid_reading(String grid_reading) => _$this._grid_reading = grid_reading;

  String _dg_amt;
  String get dg_amt => _$this._dg_amt;
  set dg_amt(String dg_amt) => _$this._dg_amt = dg_amt;

  String _grid_amt;
  String get grid_amt => _$this._grid_amt;
  set grid_amt(String grid_amt) => _$this._grid_amt = grid_amt;

  String _last_reading_updated;
  String get last_reading_updated => _$this._last_reading_updated;
  set last_reading_updated(String last_reading_updated) =>
      _$this._last_reading_updated = last_reading_updated;

  String _dg_last_reading_updated;
  String get dg_last_reading_updated => _$this._dg_last_reading_updated;
  set dg_last_reading_updated(String dg_last_reading_updated) =>
      _$this._dg_last_reading_updated = dg_last_reading_updated;

  String _notification_email;
  String get notification_email => _$this._notification_email;
  set notification_email(String notification_email) =>
      _$this._notification_email = notification_email;

  String _notification_sms;
  String get notification_sms => _$this._notification_sms;
  set notification_sms(String notification_sms) =>
      _$this._notification_sms = notification_sms;

  String _bp_no;
  String get bp_no => _$this._bp_no;
  set bp_no(String bp_no) => _$this._bp_no = bp_no;

  String _consumer_no;
  String get consumer_no => _$this._consumer_no;
  set consumer_no(String consumer_no) => _$this._consumer_no = consumer_no;

  String _account_no;
  String get account_no => _$this._account_no;
  set account_no(String account_no) => _$this._account_no = account_no;

  String _move_in_date;
  String get move_in_date => _$this._move_in_date;
  set move_in_date(String move_in_date) => _$this._move_in_date = move_in_date;

  String _notification_ivrs;
  String get notification_ivrs => _$this._notification_ivrs;
  set notification_ivrs(String notification_ivrs) =>
      _$this._notification_ivrs = notification_ivrs;

  String _notification_app_load;
  String get notification_app_load => _$this._notification_app_load;
  set notification_app_load(String notification_app_load) =>
      _$this._notification_app_load = notification_app_load;

  String _notification_app_balance;
  String get notification_app_balance => _$this._notification_app_balance;
  set notification_app_balance(String notification_app_balance) =>
      _$this._notification_app_balance = notification_app_balance;

  String _low_bal_alert;
  String get low_bal_alert => _$this._low_bal_alert;
  set low_bal_alert(String low_bal_alert) =>
      _$this._low_bal_alert = low_bal_alert;

  String _dg_low_bal_alert;
  String get dg_low_bal_alert => _$this._dg_low_bal_alert;
  set dg_low_bal_alert(String dg_low_bal_alert) =>
      _$this._dg_low_bal_alert = dg_low_bal_alert;

  String _notification_app_esource;
  String get notification_app_esource => _$this._notification_app_esource;
  set notification_app_esource(String notification_app_esource) =>
      _$this._notification_app_esource = notification_app_esource;

  String _notification_app_unit_consumption;
  String get notification_app_unit_consumption =>
      _$this._notification_app_unit_consumption;
  set notification_app_unit_consumption(
          String notification_app_unit_consumption) =>
      _$this._notification_app_unit_consumption =
          notification_app_unit_consumption;

  String _alert_daily_consumption_grid;
  String get alert_daily_consumption_grid =>
      _$this._alert_daily_consumption_grid;
  set alert_daily_consumption_grid(String alert_daily_consumption_grid) =>
      _$this._alert_daily_consumption_grid = alert_daily_consumption_grid;

  String _alert_daily_consumption_dg;
  String get alert_daily_consumption_dg => _$this._alert_daily_consumption_dg;
  set alert_daily_consumption_dg(String alert_daily_consumption_dg) =>
      _$this._alert_daily_consumption_dg = alert_daily_consumption_dg;

  String _load_setting_enabled;
  String get load_setting_enabled => _$this._load_setting_enabled;
  set load_setting_enabled(String load_setting_enabled) =>
      _$this._load_setting_enabled = load_setting_enabled;

  String _power_cut_restore_notification;
  String get power_cut_restore_notification =>
      _$this._power_cut_restore_notification;
  set power_cut_restore_notification(String power_cut_restore_notification) =>
      _$this._power_cut_restore_notification = power_cut_restore_notification;

  String _recharge_notification;
  String get recharge_notification => _$this._recharge_notification;
  set recharge_notification(String recharge_notification) =>
      _$this._recharge_notification = recharge_notification;

  String _grid_sanctioned_load;
  String get grid_sanctioned_load => _$this._grid_sanctioned_load;
  set grid_sanctioned_load(String grid_sanctioned_load) =>
      _$this._grid_sanctioned_load = grid_sanctioned_load;

  String _dg_sanctioned_load;
  String get dg_sanctioned_load => _$this._dg_sanctioned_load;
  set dg_sanctioned_load(String dg_sanctioned_load) =>
      _$this._dg_sanctioned_load = dg_sanctioned_load;

  String _load_unit;
  String get load_unit => _$this._load_unit;
  set load_unit(String load_unit) => _$this._load_unit = load_unit;

  String _meter_type;
  String get meter_type => _$this._meter_type;
  set meter_type(String meter_type) => _$this._meter_type = meter_type;

  String _grid_load_alarm;
  String get grid_load_alarm => _$this._grid_load_alarm;
  set grid_load_alarm(String grid_load_alarm) =>
      _$this._grid_load_alarm = grid_load_alarm;

  String _dg_load_alarm;
  String get dg_load_alarm => _$this._dg_load_alarm;
  set dg_load_alarm(String dg_load_alarm) =>
      _$this._dg_load_alarm = dg_load_alarm;

  String _grid_overload_setting;
  String get grid_overload_setting => _$this._grid_overload_setting;
  set grid_overload_setting(String grid_overload_setting) =>
      _$this._grid_overload_setting = grid_overload_setting;

  String _dg_overload_setting;
  String get dg_overload_setting => _$this._dg_overload_setting;
  set dg_overload_setting(String dg_overload_setting) =>
      _$this._dg_overload_setting = dg_overload_setting;

  String _grid_overload_from_time;
  String get grid_overload_from_time => _$this._grid_overload_from_time;
  set grid_overload_from_time(String grid_overload_from_time) =>
      _$this._grid_overload_from_time = grid_overload_from_time;

  String _grid_overload_to_time;
  String get grid_overload_to_time => _$this._grid_overload_to_time;
  set grid_overload_to_time(String grid_overload_to_time) =>
      _$this._grid_overload_to_time = grid_overload_to_time;

  String _dg_overload_from_time;
  String get dg_overload_from_time => _$this._dg_overload_from_time;
  set dg_overload_from_time(String dg_overload_from_time) =>
      _$this._dg_overload_from_time = dg_overload_from_time;

  String _dg_overload_to_time;
  String get dg_overload_to_time => _$this._dg_overload_to_time;
  set dg_overload_to_time(String dg_overload_to_time) =>
      _$this._dg_overload_to_time = dg_overload_to_time;

  String _overload_grid;
  String get overload_grid => _$this._overload_grid;
  set overload_grid(String overload_grid) =>
      _$this._overload_grid = overload_grid;

  String _overload_dg;
  String get overload_dg => _$this._overload_dg;
  set overload_dg(String overload_dg) => _$this._overload_dg = overload_dg;

  String _site_id;
  String get site_id => _$this._site_id;
  set site_id(String site_id) => _$this._site_id = site_id;

  String _site_name;
  String get site_name => _$this._site_name;
  set site_name(String site_name) => _$this._site_name = site_name;

  String _site_address;
  String get site_address => _$this._site_address;
  set site_address(String site_address) => _$this._site_address = site_address;

  String _site_city;
  String get site_city => _$this._site_city;
  set site_city(String site_city) => _$this._site_city = site_city;

  String _site_state;
  String get site_state => _$this._site_state;
  set site_state(String site_state) => _$this._site_state = site_state;

  String _site_country;
  String get site_country => _$this._site_country;
  set site_country(String site_country) => _$this._site_country = site_country;

  String _site_zipcode;
  String get site_zipcode => _$this._site_zipcode;
  set site_zipcode(String site_zipcode) => _$this._site_zipcode = site_zipcode;

  String _site_supervisor_name;
  String get site_supervisor_name => _$this._site_supervisor_name;
  set site_supervisor_name(String site_supervisor_name) =>
      _$this._site_supervisor_name = site_supervisor_name;

  String _site_supervisor_contact_no;
  String get site_supervisor_contact_no => _$this._site_supervisor_contact_no;
  set site_supervisor_contact_no(String site_supervisor_contact_no) =>
      _$this._site_supervisor_contact_no = site_supervisor_contact_no;

  String _site_supervisor_email_id;
  String get site_supervisor_email_id => _$this._site_supervisor_email_id;
  set site_supervisor_email_id(String site_supervisor_email_id) =>
      _$this._site_supervisor_email_id = site_supervisor_email_id;

  String _site_support_concern_name;
  String get site_support_concern_name => _$this._site_support_concern_name;
  set site_support_concern_name(String site_support_concern_name) =>
      _$this._site_support_concern_name = site_support_concern_name;

  String _site_support_contact_no;
  String get site_support_contact_no => _$this._site_support_contact_no;
  set site_support_contact_no(String site_support_contact_no) =>
      _$this._site_support_contact_no = site_support_contact_no;

  String _site_support_email_id;
  String get site_support_email_id => _$this._site_support_email_id;
  set site_support_email_id(String site_support_email_id) =>
      _$this._site_support_email_id = site_support_email_id;

  String _main_license;
  String get main_license => _$this._main_license;
  set main_license(String main_license) => _$this._main_license = main_license;

  String _application;
  String get application => _$this._application;
  set application(String application) => _$this._application = application;

  String _reading_unit;
  String get reading_unit => _$this._reading_unit;
  set reading_unit(String reading_unit) => _$this._reading_unit = reading_unit;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _site_code;
  String get site_code => _$this._site_code;
  set site_code(String site_code) => _$this._site_code = site_code;

  String _balance_enable;
  String get balance_enable => _$this._balance_enable;
  set balance_enable(String balance_enable) =>
      _$this._balance_enable = balance_enable;

  String _reading_enable;
  String get reading_enable => _$this._reading_enable;
  set reading_enable(String reading_enable) =>
      _$this._reading_enable = reading_enable;

  String _monthly_bill_enable;
  String get monthly_bill_enable => _$this._monthly_bill_enable;
  set monthly_bill_enable(String monthly_bill_enable) =>
      _$this._monthly_bill_enable = monthly_bill_enable;

  String _monthly_bill_no_of_month;
  String get monthly_bill_no_of_month => _$this._monthly_bill_no_of_month;
  set monthly_bill_no_of_month(String monthly_bill_no_of_month) =>
      _$this._monthly_bill_no_of_month = monthly_bill_no_of_month;

  String _PLM;
  String get PLM => _$this._PLM;
  set PLM(String PLM) => _$this._PLM = PLM;

  String _pg_enable_paytm;
  String get pg_enable_paytm => _$this._pg_enable_paytm;
  set pg_enable_paytm(String pg_enable_paytm) =>
      _$this._pg_enable_paytm = pg_enable_paytm;

  String _pg_enable_mobikwik;
  String get pg_enable_mobikwik => _$this._pg_enable_mobikwik;
  set pg_enable_mobikwik(String pg_enable_mobikwik) =>
      _$this._pg_enable_mobikwik = pg_enable_mobikwik;

  String _paytmMobileUrl;
  String get paytmMobileUrl => _$this._paytmMobileUrl;
  set paytmMobileUrl(String paytmMobileUrl) =>
      _$this._paytmMobileUrl = paytmMobileUrl;

  String _mobikwik_mobile_url;
  String get mobikwik_mobile_url => _$this._mobikwik_mobile_url;
  set mobikwik_mobile_url(String mobikwik_mobile_url) =>
      _$this._mobikwik_mobile_url = mobikwik_mobile_url;

  String _pg_enable_hdfc;
  String get pg_enable_hdfc => _$this._pg_enable_hdfc;
  set pg_enable_hdfc(String pg_enable_hdfc) =>
      _$this._pg_enable_hdfc = pg_enable_hdfc;

  String _paytm_image;
  String get paytm_image => _$this._paytm_image;
  set paytm_image(String paytm_image) => _$this._paytm_image = paytm_image;

  String _recharge_popup_message;
  String get recharge_popup_message => _$this._recharge_popup_message;
  set recharge_popup_message(String recharge_popup_message) =>
      _$this._recharge_popup_message = recharge_popup_message;

  String _energy_source;
  String get energy_source => _$this._energy_source;
  set energy_source(String energy_source) =>
      _$this._energy_source = energy_source;

  String _last_reading_updated_dg;
  String get last_reading_updated_dg => _$this._last_reading_updated_dg;
  set last_reading_updated_dg(String last_reading_updated_dg) =>
      _$this._last_reading_updated_dg = last_reading_updated_dg;

  String _display_load_setting_screen;
  String get display_load_setting_screen => _$this._display_load_setting_screen;
  set display_load_setting_screen(String display_load_setting_screen) =>
      _$this._display_load_setting_screen = display_load_setting_screen;

  double _daily_dg_unit;
  double get daily_dg_unit => _$this._daily_dg_unit;
  set daily_dg_unit(double daily_dg_unit) =>
      _$this._daily_dg_unit = daily_dg_unit;

  double _daily_grid_unit;
  double get daily_grid_unit => _$this._daily_grid_unit;
  set daily_grid_unit(double daily_grid_unit) =>
      _$this._daily_grid_unit = daily_grid_unit;

  double _monthly_dg_unit;
  double get monthly_dg_unit => _$this._monthly_dg_unit;
  set monthly_dg_unit(double monthly_dg_unit) =>
      _$this._monthly_dg_unit = monthly_dg_unit;

  double _monthly_grid_unit;
  double get monthly_grid_unit => _$this._monthly_grid_unit;
  set monthly_grid_unit(double monthly_grid_unit) =>
      _$this._monthly_grid_unit = monthly_grid_unit;

  double _daily_dg_amount;
  double get daily_dg_amount => _$this._daily_dg_amount;
  set daily_dg_amount(double daily_dg_amount) =>
      _$this._daily_dg_amount = daily_dg_amount;

  double _daily_grid_amount;
  double get daily_grid_amount => _$this._daily_grid_amount;
  set daily_grid_amount(double daily_grid_amount) =>
      _$this._daily_grid_amount = daily_grid_amount;

  double _monthly_dg_amount;
  double get monthly_dg_amount => _$this._monthly_dg_amount;
  set monthly_dg_amount(double monthly_dg_amount) =>
      _$this._monthly_dg_amount = monthly_dg_amount;

  double _monthly_grid_amount;
  double get monthly_grid_amount => _$this._monthly_grid_amount;
  set monthly_grid_amount(double monthly_grid_amount) =>
      _$this._monthly_grid_amount = monthly_grid_amount;

  double _fix_charges;
  double get fix_charges => _$this._fix_charges;
  set fix_charges(double fix_charges) => _$this._fix_charges = fix_charges;

  double _dr_cr;
  double get dr_cr => _$this._dr_cr;
  set dr_cr(double dr_cr) => _$this._dr_cr = dr_cr;

  double _fix_charges_monthly;
  double get fix_charges_monthly => _$this._fix_charges_monthly;
  set fix_charges_monthly(double fix_charges_monthly) =>
      _$this._fix_charges_monthly = fix_charges_monthly;

  String _dr_cr_monthly;
  String get dr_cr_monthly => _$this._dr_cr_monthly;
  set dr_cr_monthly(String dr_cr_monthly) =>
      _$this._dr_cr_monthly = dr_cr_monthly;

  double _dg_fix_charges_monthly;
  double get dg_fix_charges_monthly => _$this._dg_fix_charges_monthly;
  set dg_fix_charges_monthly(double dg_fix_charges_monthly) =>
      _$this._dg_fix_charges_monthly = dg_fix_charges_monthly;

  String _dg_dr_cr_monthly;
  String get dg_dr_cr_monthly => _$this._dg_dr_cr_monthly;
  set dg_dr_cr_monthly(String dg_dr_cr_monthly) =>
      _$this._dg_dr_cr_monthly = dg_dr_cr_monthly;

  ResourceBuilder();

  ResourceBuilder get _$this {
    if (_$v != null) {
      _android_version = _$v.android_version;
      _ios_version = _$v.ios_version;
      _mobile_app_status = _$v.mobile_app_status;
      _location_id = _$v.location_id;
      _login_count = _$v.login_count;
      _device_app_ver = _$v.device_app_ver;
      _flat_number = _$v.flat_number;
      _consumer_name = _$v.consumer_name;
      _consumer_mobile_no = _$v.consumer_mobile_no;
      _consumer_email_id = _$v.consumer_email_id;
      _balance_amount = _$v.balance_amount;
      _dg_balance_amount = _$v.dg_balance_amount;
      _last_recharge_time = _$v.last_recharge_time;
      _dg_last_recharge_time = _$v.dg_last_recharge_time;
      _last_coupon_number = _$v.last_coupon_number;
      _dg_last_coupon_number = _$v.dg_last_coupon_number;
      _last_coupon_amount = _$v.last_coupon_amount;
      _dg_last_coupon_amount = _$v.dg_last_coupon_amount;
      _dg_reading = _$v.dg_reading;
      _grid_reading = _$v.grid_reading;
      _dg_amt = _$v.dg_amt;
      _grid_amt = _$v.grid_amt;
      _last_reading_updated = _$v.last_reading_updated;
      _dg_last_reading_updated = _$v.dg_last_reading_updated;
      _notification_email = _$v.notification_email;
      _notification_sms = _$v.notification_sms;
      _bp_no = _$v.bp_no;
      _consumer_no = _$v.consumer_no;
      _account_no = _$v.account_no;
      _move_in_date = _$v.move_in_date;
      _notification_ivrs = _$v.notification_ivrs;
      _notification_app_load = _$v.notification_app_load;
      _notification_app_balance = _$v.notification_app_balance;
      _low_bal_alert = _$v.low_bal_alert;
      _dg_low_bal_alert = _$v.dg_low_bal_alert;
      _notification_app_esource = _$v.notification_app_esource;
      _notification_app_unit_consumption =
          _$v.notification_app_unit_consumption;
      _alert_daily_consumption_grid = _$v.alert_daily_consumption_grid;
      _alert_daily_consumption_dg = _$v.alert_daily_consumption_dg;
      _load_setting_enabled = _$v.load_setting_enabled;
      _power_cut_restore_notification = _$v.power_cut_restore_notification;
      _recharge_notification = _$v.recharge_notification;
      _grid_sanctioned_load = _$v.grid_sanctioned_load;
      _dg_sanctioned_load = _$v.dg_sanctioned_load;
      _load_unit = _$v.load_unit;
      _meter_type = _$v.meter_type;
      _grid_load_alarm = _$v.grid_load_alarm;
      _dg_load_alarm = _$v.dg_load_alarm;
      _grid_overload_setting = _$v.grid_overload_setting;
      _dg_overload_setting = _$v.dg_overload_setting;
      _grid_overload_from_time = _$v.grid_overload_from_time;
      _grid_overload_to_time = _$v.grid_overload_to_time;
      _dg_overload_from_time = _$v.dg_overload_from_time;
      _dg_overload_to_time = _$v.dg_overload_to_time;
      _overload_grid = _$v.overload_grid;
      _overload_dg = _$v.overload_dg;
      _site_id = _$v.site_id;
      _site_name = _$v.site_name;
      _site_address = _$v.site_address;
      _site_city = _$v.site_city;
      _site_state = _$v.site_state;
      _site_country = _$v.site_country;
      _site_zipcode = _$v.site_zipcode;
      _site_supervisor_name = _$v.site_supervisor_name;
      _site_supervisor_contact_no = _$v.site_supervisor_contact_no;
      _site_supervisor_email_id = _$v.site_supervisor_email_id;
      _site_support_concern_name = _$v.site_support_concern_name;
      _site_support_contact_no = _$v.site_support_contact_no;
      _site_support_email_id = _$v.site_support_email_id;
      _main_license = _$v.main_license;
      _application = _$v.application;
      _reading_unit = _$v.reading_unit;
      _currency = _$v.currency;
      _site_code = _$v.site_code;
      _balance_enable = _$v.balance_enable;
      _reading_enable = _$v.reading_enable;
      _monthly_bill_enable = _$v.monthly_bill_enable;
      _monthly_bill_no_of_month = _$v.monthly_bill_no_of_month;
      _PLM = _$v.PLM;
      _pg_enable_paytm = _$v.pg_enable_paytm;
      _pg_enable_mobikwik = _$v.pg_enable_mobikwik;
      _paytmMobileUrl = _$v.paytmMobileUrl;
      _mobikwik_mobile_url = _$v.mobikwik_mobile_url;
      _pg_enable_hdfc = _$v.pg_enable_hdfc;
      _paytm_image = _$v.paytm_image;
      _recharge_popup_message = _$v.recharge_popup_message;
      _energy_source = _$v.energy_source;
      _last_reading_updated_dg = _$v.last_reading_updated_dg;
      _display_load_setting_screen = _$v.display_load_setting_screen;
      _daily_dg_unit = _$v.daily_dg_unit;
      _daily_grid_unit = _$v.daily_grid_unit;
      _monthly_dg_unit = _$v.monthly_dg_unit;
      _monthly_grid_unit = _$v.monthly_grid_unit;
      _daily_dg_amount = _$v.daily_dg_amount;
      _daily_grid_amount = _$v.daily_grid_amount;
      _monthly_dg_amount = _$v.monthly_dg_amount;
      _monthly_grid_amount = _$v.monthly_grid_amount;
      _fix_charges = _$v.fix_charges;
      _dr_cr = _$v.dr_cr;
      _fix_charges_monthly = _$v.fix_charges_monthly;
      _dr_cr_monthly = _$v.dr_cr_monthly;
      _dg_fix_charges_monthly = _$v.dg_fix_charges_monthly;
      _dg_dr_cr_monthly = _$v.dg_dr_cr_monthly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Resource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Resource;
  }

  @override
  void update(void Function(ResourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Resource build() {
    final _$result = _$v ??
        new _$Resource._(
            android_version: android_version,
            ios_version: ios_version,
            mobile_app_status: mobile_app_status,
            location_id: location_id,
            login_count: login_count,
            device_app_ver: device_app_ver,
            flat_number: flat_number,
            consumer_name: consumer_name,
            consumer_mobile_no: consumer_mobile_no,
            consumer_email_id: consumer_email_id,
            balance_amount: balance_amount,
            dg_balance_amount: dg_balance_amount,
            last_recharge_time: last_recharge_time,
            dg_last_recharge_time: dg_last_recharge_time,
            last_coupon_number: last_coupon_number,
            dg_last_coupon_number: dg_last_coupon_number,
            last_coupon_amount: last_coupon_amount,
            dg_last_coupon_amount: dg_last_coupon_amount,
            dg_reading: dg_reading,
            grid_reading: grid_reading,
            dg_amt: dg_amt,
            grid_amt: grid_amt,
            last_reading_updated: last_reading_updated,
            dg_last_reading_updated: dg_last_reading_updated,
            notification_email: notification_email,
            notification_sms: notification_sms,
            bp_no: bp_no,
            consumer_no: consumer_no,
            account_no: account_no,
            move_in_date: move_in_date,
            notification_ivrs: notification_ivrs,
            notification_app_load: notification_app_load,
            notification_app_balance: notification_app_balance,
            low_bal_alert: low_bal_alert,
            dg_low_bal_alert: dg_low_bal_alert,
            notification_app_esource: notification_app_esource,
            notification_app_unit_consumption:
                notification_app_unit_consumption,
            alert_daily_consumption_grid: alert_daily_consumption_grid,
            alert_daily_consumption_dg: alert_daily_consumption_dg,
            load_setting_enabled: load_setting_enabled,
            power_cut_restore_notification: power_cut_restore_notification,
            recharge_notification: recharge_notification,
            grid_sanctioned_load: grid_sanctioned_load,
            dg_sanctioned_load: dg_sanctioned_load,
            load_unit: load_unit,
            meter_type: meter_type,
            grid_load_alarm: grid_load_alarm,
            dg_load_alarm: dg_load_alarm,
            grid_overload_setting: grid_overload_setting,
            dg_overload_setting: dg_overload_setting,
            grid_overload_from_time: grid_overload_from_time,
            grid_overload_to_time: grid_overload_to_time,
            dg_overload_from_time: dg_overload_from_time,
            dg_overload_to_time: dg_overload_to_time,
            overload_grid: overload_grid,
            overload_dg: overload_dg,
            site_id: site_id,
            site_name: site_name,
            site_address: site_address,
            site_city: site_city,
            site_state: site_state,
            site_country: site_country,
            site_zipcode: site_zipcode,
            site_supervisor_name: site_supervisor_name,
            site_supervisor_contact_no: site_supervisor_contact_no,
            site_supervisor_email_id: site_supervisor_email_id,
            site_support_concern_name: site_support_concern_name,
            site_support_contact_no: site_support_contact_no,
            site_support_email_id: site_support_email_id,
            main_license: main_license,
            application: application,
            reading_unit: reading_unit,
            currency: currency,
            site_code: site_code,
            balance_enable: balance_enable,
            reading_enable: reading_enable,
            monthly_bill_enable: monthly_bill_enable,
            monthly_bill_no_of_month: monthly_bill_no_of_month,
            PLM: PLM,
            pg_enable_paytm: pg_enable_paytm,
            pg_enable_mobikwik: pg_enable_mobikwik,
            paytmMobileUrl: paytmMobileUrl,
            mobikwik_mobile_url: mobikwik_mobile_url,
            pg_enable_hdfc: pg_enable_hdfc,
            paytm_image: paytm_image,
            recharge_popup_message: recharge_popup_message,
            energy_source: energy_source,
            last_reading_updated_dg: last_reading_updated_dg,
            display_load_setting_screen: display_load_setting_screen,
            daily_dg_unit: daily_dg_unit,
            daily_grid_unit: daily_grid_unit,
            monthly_dg_unit: monthly_dg_unit,
            monthly_grid_unit: monthly_grid_unit,
            daily_dg_amount: daily_dg_amount,
            daily_grid_amount: daily_grid_amount,
            monthly_dg_amount: monthly_dg_amount,
            monthly_grid_amount: monthly_grid_amount,
            fix_charges: fix_charges,
            dr_cr: dr_cr,
            fix_charges_monthly: fix_charges_monthly,
            dr_cr_monthly: dr_cr_monthly,
            dg_fix_charges_monthly: dg_fix_charges_monthly,
            dg_dr_cr_monthly: dg_dr_cr_monthly);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

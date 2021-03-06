// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return Resource(
    androidVersion: json['android_version'] as String,
    iosVersion: json['ios_version'] as String,
    mobileAppStatus: json['mobile_app_status'] as String,
    locationId: json['location_id'] as String,
    loginCount: json['login_count'] as String,
    deviceAppVer: json['device_app_ver'] as String,
    flatNumber: json['flat_number'] as String,
    consumerName: json['consumer_name'] as String,
    consumerMobileNo: json['consumer_mobile_no'] as String,
    consumerEmailId: json['consumer_email_id'] as String,
    balanceAmount: json['balance_amount'] as String,
    dgBalanceAmount: json['dg_balance_amount'] as String,
    lastRechargeTime: json['last_recharge_time'] as String,
    dgLastRechargeTime: json['dg_last_recharge_time'] as String,
    lastCouponNumber: json['last_coupon_number'] as String,
    dgLastCouponNumber: json['dg_last_coupon_number'] as String,
    lastCouponAmount: json['last_coupon_amount'] as String,
    dgLastCouponAmount: json['dg_last_coupon_amount'] as String,
    dgReading: json['dg_reading'] as String,
    gridReading: json['grid_reading'] as String,
    dgAmt: json['dg_amt'] as String,
    gridAmt: json['grid_amt'] as String,
    lastReadingUpdated: json['last_reading_updated'] as String,
    dgLastReadingUpdated: json['dg_last_reading_updated'] as String,
    notificationEmail: json['notification_email'] as String,
    notificationSms: json['notification_sms'] as String,
    bpNo: json['bp_no'] as String,
    consumerNo: json['consumerNo'] as String,
    accountNo: json['account_no'] as String,
    moveInDate: json['move_in_date'] as String,
    notificationIvrs: json['notification_ivrs'] as String,
    notificationAppLoad: json['notification_app_load'] as String,
    notificationAppBalance: json['notification_app_balance'] as String,
    lowBalAlert: json['low_bal_alert'] as String,
    dgLowBalAlert: json['dg_low_bal_alert'] as String,
    notificationAppEsource: json['notification_app_esource'] as String,
    notificationAppUnitConsumption:
        json['notification_app_unit_consumption'] as String,
    alertDailyConsumptionGrid: json['alert_daily_consumption_grid'] as String,
    alertDailyConsumptionDg: json['alert_daily_consumption_dg'] as String,
    loadSettingEnabled: json['load_setting_enabled'] as String,
    powerCutRestoreNotification:
        json['power_cut_restore_notification'] as String,
    rechargeNotification: json['recharge_notification'] as String,
    gridSanctionedLoad: json['grid_sanctioned_load'] as String,
    dgSanctionedLoad: json['dg_sanctioned_load'] as String,
    loadUnit: json['load_unit'] as String,
    meterType: json['meter_type'] as String,
    gridLoadAlarm: json['grid_load_alarm'] as String,
    dgLoadAlarm: json['dg_load_alarm'] as String,
    gridOverloadSetting: json['grid_overload_setting'] as String,
    dgOverloadSetting: json['dg_overload_setting'] as String,
    gridOverloadFromTime: json['grid_overload_from_time'] as String,
    gridOverloadToTime: json['grid_overload_to_time'] as String,
    dgOverloadFromTime: json['dg_overload_from_time'] as String,
    dgOverloadToTime: json['dg_overload_to_time'] as String,
    overloadGrid: json['overload_grid'] as String,
    overloadDg: json['overload_dg'] as String,
    siteId: json['site_id'] as String,
    siteName: json['site_name'] as String,
    siteAddress: json['site_address'] as String,
    siteCity: json['site_city'] as String,
    siteState: json['site_state'] as String,
    siteCountry: json['site_country'] as String,
    siteZipcode: json['site_zipcode'] as String,
    siteSupervisorName: json['site_supervisor_name'] as String,
    siteSupervisorContactNo: json['site_supervisor_contact_no'] as String,
    siteSupervisorEmailId: json['site_supervisor_email_id'] as String,
    siteSupportConcernName: json['site_support_concern_name'] as String,
    siteSupportContactNo: json['site_support_contact_no'] as String,
    siteSupportEmailId: json['site_support_email_id'] as String,
    mainLicense: json['main_license'] as String,
    application: json['application'] as String,
    readingUnit: json['reading_unit'] as String,
    currency: json['currency'] as String,
    siteCode: json['site_code'] as String,
    balanceEnable: json['balance_enable'] as String,
    readingEnable: json['reading_enable'] as String,
    monthlyBillEnable: json['monthly_bill_enable'] as String,
    monthlyBillNoOfMonth: json['monthly_bill_no_of_month'] as String,
    pLM: json['PLM'] as String,
    pgEnablePaytm: json['pg_enable_paytm'] as String,
    pgEnableMobikwik: json['pg_enable_mobikwik'] as String,
    paytmMobileUrl: json['paytm_mobile_url'] as String,
    mobikwikMobileUrl: json['mobikwik_mobile_url'] as String,
    pgEnableHdfc: json['pg_enable_hdfc'] as String,
    paytmImage: json['paytm_image'] as String,
    rechargePopupMessage: json['recharge_popup_message'] as String,
    energySource: json['energy_source'] as String,
    lastReadingUpdatedDg: json['last_reading_updated_dg'] as String,
    displayLoadSettingScreen: json['display_load_setting_screen'] as String,
    dailyDgUnit: (json['daily_dg_unit'] as num)?.toDouble(),
    dailyGridUnit: (json['daily_grid_unit'] as num)?.toDouble(),
    monthlyDgUnit: (json['monthly_dg_unit'] as num)?.toDouble(),
    monthlyGridUnit: (json['monthly_grid_unit'] as num)?.toDouble(),
    dailyDgAmount: (json['daily_dg_amount'] as num)?.toDouble(),
    dailyGridAmount: (json['daily_grid_amount'] as num)?.toDouble(),
    monthlyDgAmount: (json['monthly_dg_amount'] as num)?.toDouble(),
    monthlyGridAmount: (json['monthly_grid_amount'] as num)?.toDouble(),
    fixCharges: (json['fix_charges'] as num)?.toDouble(),
    drCr: json['dr_cr'] as String,
    fixChargesMonthly: (json['fix_charges_monthly'] as num)?.toDouble(),
    drCrMonthly: json['dr_cr_monthly'] as String,
    dgFixChargesMonthly: (json['dg_fix_charges_monthly'] as num)?.toDouble(),
    dgDrCrMonthly: json['dg_dr_cr_monthly'] as String,
  );
}

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'android_version': instance.androidVersion,
      'ios_version': instance.iosVersion,
      'mobile_app_status': instance.mobileAppStatus,
      'location_id': instance.locationId,
      'login_count': instance.loginCount,
      'device_app_ver': instance.deviceAppVer,
      'flat_number': instance.flatNumber,
      'consumer_name': instance.consumerName,
      'consumer_mobile_no': instance.consumerMobileNo,
      'consumer_email_id': instance.consumerEmailId,
      'balance_amount': instance.balanceAmount,
      'dg_balance_amount': instance.dgBalanceAmount,
      'last_recharge_time': instance.lastRechargeTime,
      'dg_last_recharge_time': instance.dgLastRechargeTime,
      'last_coupon_number': instance.lastCouponNumber,
      'dg_last_coupon_number': instance.dgLastCouponNumber,
      'last_coupon_amount': instance.lastCouponAmount,
      'dg_last_coupon_amount': instance.dgLastCouponAmount,
      'dg_reading': instance.dgReading,
      'grid_reading': instance.gridReading,
      'dg_amt': instance.dgAmt,
      'grid_amt': instance.gridAmt,
      'last_reading_updated': instance.lastReadingUpdated,
      'dg_last_reading_updated': instance.dgLastReadingUpdated,
      'notification_email': instance.notificationEmail,
      'notification_sms': instance.notificationSms,
      'bp_no': instance.bpNo,
      'consumerNo': instance.consumerNo,
      'account_no': instance.accountNo,
      'move_in_date': instance.moveInDate,
      'notification_ivrs': instance.notificationIvrs,
      'notification_app_load': instance.notificationAppLoad,
      'notification_app_balance': instance.notificationAppBalance,
      'low_bal_alert': instance.lowBalAlert,
      'dg_low_bal_alert': instance.dgLowBalAlert,
      'notification_app_esource': instance.notificationAppEsource,
      'notification_app_unit_consumption':
          instance.notificationAppUnitConsumption,
      'alert_daily_consumption_grid': instance.alertDailyConsumptionGrid,
      'alert_daily_consumption_dg': instance.alertDailyConsumptionDg,
      'load_setting_enabled': instance.loadSettingEnabled,
      'power_cut_restore_notification': instance.powerCutRestoreNotification,
      'recharge_notification': instance.rechargeNotification,
      'grid_sanctioned_load': instance.gridSanctionedLoad,
      'dg_sanctioned_load': instance.dgSanctionedLoad,
      'load_unit': instance.loadUnit,
      'meter_type': instance.meterType,
      'grid_load_alarm': instance.gridLoadAlarm,
      'dg_load_alarm': instance.dgLoadAlarm,
      'grid_overload_setting': instance.gridOverloadSetting,
      'dg_overload_setting': instance.dgOverloadSetting,
      'grid_overload_from_time': instance.gridOverloadFromTime,
      'grid_overload_to_time': instance.gridOverloadToTime,
      'dg_overload_from_time': instance.dgOverloadFromTime,
      'dg_overload_to_time': instance.dgOverloadToTime,
      'overload_grid': instance.overloadGrid,
      'overload_dg': instance.overloadDg,
      'site_id': instance.siteId,
      'site_name': instance.siteName,
      'site_address': instance.siteAddress,
      'site_city': instance.siteCity,
      'site_state': instance.siteState,
      'site_country': instance.siteCountry,
      'site_zipcode': instance.siteZipcode,
      'site_supervisor_name': instance.siteSupervisorName,
      'site_supervisor_contact_no': instance.siteSupervisorContactNo,
      'site_supervisor_email_id': instance.siteSupervisorEmailId,
      'site_support_concern_name': instance.siteSupportConcernName,
      'site_support_contact_no': instance.siteSupportContactNo,
      'site_support_email_id': instance.siteSupportEmailId,
      'main_license': instance.mainLicense,
      'application': instance.application,
      'reading_unit': instance.readingUnit,
      'currency': instance.currency,
      'site_code': instance.siteCode,
      'balance_enable': instance.balanceEnable,
      'reading_enable': instance.readingEnable,
      'monthly_bill_enable': instance.monthlyBillEnable,
      'monthly_bill_no_of_month': instance.monthlyBillNoOfMonth,
      'PLM': instance.pLM,
      'pg_enable_paytm': instance.pgEnablePaytm,
      'pg_enable_mobikwik': instance.pgEnableMobikwik,
      'paytm_mobile_url': instance.paytmMobileUrl,
      'mobikwik_mobile_url': instance.mobikwikMobileUrl,
      'pg_enable_hdfc': instance.pgEnableHdfc,
      'paytm_image': instance.paytmImage,
      'recharge_popup_message': instance.rechargePopupMessage,
      'energy_source': instance.energySource,
      'last_reading_updated_dg': instance.lastReadingUpdatedDg,
      'display_load_setting_screen': instance.displayLoadSettingScreen,
      'daily_dg_unit': instance.dailyDgUnit,
      'daily_grid_unit': instance.dailyGridUnit,
      'monthly_dg_unit': instance.monthlyDgUnit,
      'monthly_grid_unit': instance.monthlyGridUnit,
      'daily_dg_amount': instance.dailyDgAmount,
      'daily_grid_amount': instance.dailyGridAmount,
      'monthly_dg_amount': instance.monthlyDgAmount,
      'monthly_grid_amount': instance.monthlyGridAmount,
      'fix_charges': instance.fixCharges,
      'dr_cr': instance.drCr,
      'fix_charges_monthly': instance.fixChargesMonthly,
      'dr_cr_monthly': instance.drCrMonthly,
      'dg_fix_charges_monthly': instance.dgFixChargesMonthly,
      'dg_dr_cr_monthly': instance.dgDrCrMonthly,
    };

import 'package:json_annotation/json_annotation.dart';

part 'resource.g.dart';

@JsonSerializable()
class Resource {
  @JsonKey(name: 'android_version')
  String androidVersion;

  @JsonKey(name: 'ios_version')
  String iosVersion;

  @JsonKey(name: 'mobile_app_status')
  String mobileAppStatus;

  @JsonKey(name: 'location_id')
  String locationId;

  @JsonKey(name: 'login_count')
  String loginCount;

  @JsonKey(name: 'device_app_ver')
  String deviceAppVer;

  @JsonKey(name: 'flat_number')
  String flatNumber;

  @JsonKey(name: 'consumer_name')
  String consumerName;

  @JsonKey(name: 'consumer_mobile_no')
  String consumerMobileNo;

  @JsonKey(name: 'consumer_email_id')
  String consumerEmailId;

  @JsonKey(name: 'balance_amount')
  String balanceAmount;

  @JsonKey(name: 'dg_balance_amount')
  String dgBalanceAmount;

  @JsonKey(name: 'last_recharge_time')
  String lastRechargeTime;

  @JsonKey(name: 'dg_last_recharge_time')
  String dgLastRechargeTime;

  @JsonKey(name: 'last_coupon_number')
  String lastCouponNumber;

  @JsonKey(name: 'dg_last_coupon_number')
  String dgLastCouponNumber;

  @JsonKey(name: 'last_coupon_amount')
  String lastCouponAmount;

  @JsonKey(name: 'dg_last_coupon_amount')
  String dgLastCouponAmount;

  @JsonKey(name: 'dg_reading')
  String dgReading;

  @JsonKey(name: 'grid_reading')
  String gridReading;

  @JsonKey(name: 'dg_amt')
  String dgAmt;

  @JsonKey(name: 'grid_amt')
  String gridAmt;

  @JsonKey(name: 'last_reading_updated')
  String lastReadingUpdated;

  @JsonKey(name: 'dg_last_reading_updated')
  String dgLastReadingUpdated;

  @JsonKey(name: 'notification_email')
  String notificationEmail;

  @JsonKey(name: 'notification_sms')
  String notificationSms;

  @JsonKey(name: 'bp_no')
  String bpNo;

  @JsonKey(name: 'consumerNo')
  String consumerNo;

  @JsonKey(name: 'account_no')
  String accountNo;

  @JsonKey(name: 'move_in_date')
  String moveInDate;

  @JsonKey(name: 'notification_ivrs')
  String notificationIvrs;

  @JsonKey(name: 'notification_app_load')
  String notificationAppLoad;

  @JsonKey(name: 'notification_app_balance')
  String notificationAppBalance;

  @JsonKey(name: 'low_bal_alert')
  String lowBalAlert;

  @JsonKey(name: 'dg_low_bal_alert')
  String dgLowBalAlert;

  @JsonKey(name: 'notification_app_esource')
  String notificationAppEsource;

  @JsonKey(name: 'notification_app_unit_consumption')
  String notificationAppUnitConsumption;

  @JsonKey(name: 'alert_daily_consumption_grid')
  String alertDailyConsumptionGrid;

  @JsonKey(name: 'alert_daily_consumption_dg')
  String alertDailyConsumptionDg;

  @JsonKey(name: 'load_setting_enabled')
  String loadSettingEnabled;

  @JsonKey(name: 'power_cut_restore_notification')
  String powerCutRestoreNotification;

  @JsonKey(name: 'recharge_notification')
  String rechargeNotification;

  @JsonKey(name: 'grid_sanctioned_load')
  String gridSanctionedLoad;

  @JsonKey(name: 'dg_sanctioned_load')
  String dgSanctionedLoad;

  @JsonKey(name: 'load_unit')
  String loadUnit;

  @JsonKey(name: 'meter_type')
  String meterType;

  @JsonKey(name: 'grid_load_alarm')
  String gridLoadAlarm;

  @JsonKey(name: 'dg_load_alarm')
  String dgLoadAlarm;

  @JsonKey(name: 'grid_overload_setting')
  String gridOverloadSetting;

  @JsonKey(name: 'dg_overload_setting')
  String dgOverloadSetting;

  @JsonKey(name: 'grid_overload_from_time')
  String gridOverloadFromTime;

  @JsonKey(name: 'grid_overload_to_time')
  String gridOverloadToTime;

  @JsonKey(name: 'dg_overload_from_time')
  String dgOverloadFromTime;

  @JsonKey(name: 'dg_overload_to_time')
  String dgOverloadToTime;

  @JsonKey(name: 'overload_grid')
  String overloadGrid;

  @JsonKey(name: 'overload_dg')
  String overloadDg;

  @JsonKey(name: 'site_id')
  String siteId;

  @JsonKey(name: 'site_name')
  String siteName;

  @JsonKey(name: 'site_address')
  String siteAddress;

  @JsonKey(name: 'site_city')
  String siteCity;

  @JsonKey(name: 'site_state')
  String siteState;

  @JsonKey(name: 'site_country')
  String siteCountry;

  @JsonKey(name: 'site_zipcode')
  String siteZipcode;

  @JsonKey(name: 'site_supervisor_name')
  String siteSupervisorName;

  @JsonKey(name: 'site_supervisor_contact_no')
  String siteSupervisorContactNo;

  @JsonKey(name: 'site_supervisor_email_id')
  String siteSupervisorEmailId;

  @JsonKey(name: 'site_support_concern_name')
  String siteSupportConcernName;

  @JsonKey(name: 'site_support_contact_no')
  String siteSupportContactNo;

  @JsonKey(name: 'site_support_email_id')
  String siteSupportEmailId;

  @JsonKey(name: 'main_license')
  String mainLicense;

  @JsonKey(name: 'application')
  String application;

  @JsonKey(name: 'reading_unit')
  String readingUnit;

  @JsonKey(name: 'currency')
  String currency;

  @JsonKey(name: 'site_code')
  String siteCode;

  @JsonKey(name: 'balance_enable')
  String balanceEnable;

  @JsonKey(name: 'reading_enable')
  String readingEnable;

  @JsonKey(name: 'monthly_bill_enable')
  String monthlyBillEnable;

  @JsonKey(name: 'monthly_bill_no_of_month')
  String monthlyBillNoOfMonth;

  @JsonKey(name: 'PLM')
  String pLM;

  @JsonKey(name: 'pg_enable_paytm')
  String pgEnablePaytm;

  @JsonKey(name: 'pg_enable_mobikwik')
  String pgEnableMobikwik;

  @JsonKey(name: 'paytm_mobile_url')
  String paytmMobileUrl;

  @JsonKey(name: 'mobikwik_mobile_url')
  String mobikwikMobileUrl;

  @JsonKey(name: 'pg_enable_hdfc')
  String pgEnableHdfc;

  @JsonKey(name: 'paytm_image')
  String paytmImage;

  @JsonKey(name: 'recharge_popup_message')
  String rechargePopupMessage;

  @JsonKey(name: 'energy_source')
  String energySource;

  @JsonKey(name: 'last_reading_updated_dg')
  String lastReadingUpdatedDg;

  @JsonKey(name: 'display_load_setting_screen')
  String displayLoadSettingScreen;

  @JsonKey(name: 'daily_dg_unit')
  double dailyDgUnit;

  @JsonKey(name: 'daily_grid_unit')
  double dailyGridUnit;

  @JsonKey(name: 'monthly_dg_unit')
  double monthlyDgUnit;

  @JsonKey(name: 'monthly_grid_unit')
  double monthlyGridUnit;

  @JsonKey(name: 'daily_dg_amount')
  double dailyDgAmount;

  @JsonKey(name: 'daily_grid_amount')
  double dailyGridAmount;

  @JsonKey(name: 'monthly_dg_amount')
  double monthlyDgAmount;

  @JsonKey(name: 'monthly_grid_amount')
  double monthlyGridAmount;

  @JsonKey(name: 'fix_charges')
  double fixCharges;

  @JsonKey(name: 'dr_cr')
  String drCr;

  @JsonKey(name: 'fix_charges_monthly')
  double fixChargesMonthly;

  @JsonKey(name: 'dr_cr_monthly')
  String drCrMonthly;

  @JsonKey(name: 'dg_fix_charges_monthly')
  double dgFixChargesMonthly;

  @JsonKey(name: 'dg_dr_cr_monthly')
  String dgDrCrMonthly;

  Resource(
      {this.androidVersion,
      this.iosVersion,
      this.mobileAppStatus,
      this.locationId,
      this.loginCount,
      this.deviceAppVer,
      this.flatNumber,
      this.consumerName,
      this.consumerMobileNo,
      this.consumerEmailId,
      this.balanceAmount,
      this.dgBalanceAmount,
      this.lastRechargeTime,
      this.dgLastRechargeTime,
      this.lastCouponNumber,
      this.dgLastCouponNumber,
      this.lastCouponAmount,
      this.dgLastCouponAmount,
      this.dgReading,
      this.gridReading,
      this.dgAmt,
      this.gridAmt,
      this.lastReadingUpdated,
      this.dgLastReadingUpdated,
      this.notificationEmail,
      this.notificationSms,
      this.bpNo,
      this.consumerNo,
      this.accountNo,
      this.moveInDate,
      this.notificationIvrs,
      this.notificationAppLoad,
      this.notificationAppBalance,
      this.lowBalAlert,
      this.dgLowBalAlert,
      this.notificationAppEsource,
      this.notificationAppUnitConsumption,
      this.alertDailyConsumptionGrid,
      this.alertDailyConsumptionDg,
      this.loadSettingEnabled,
      this.powerCutRestoreNotification,
      this.rechargeNotification,
      this.gridSanctionedLoad,
      this.dgSanctionedLoad,
      this.loadUnit,
      this.meterType,
      this.gridLoadAlarm,
      this.dgLoadAlarm,
      this.gridOverloadSetting,
      this.dgOverloadSetting,
      this.gridOverloadFromTime,
      this.gridOverloadToTime,
      this.dgOverloadFromTime,
      this.dgOverloadToTime,
      this.overloadGrid,
      this.overloadDg,
      this.siteId,
      this.siteName,
      this.siteAddress,
      this.siteCity,
      this.siteState,
      this.siteCountry,
      this.siteZipcode,
      this.siteSupervisorName,
      this.siteSupervisorContactNo,
      this.siteSupervisorEmailId,
      this.siteSupportConcernName,
      this.siteSupportContactNo,
      this.siteSupportEmailId,
      this.mainLicense,
      this.application,
      this.readingUnit,
      this.currency,
      this.siteCode,
      this.balanceEnable,
      this.readingEnable,
      this.monthlyBillEnable,
      this.monthlyBillNoOfMonth,
      this.pLM,
      this.pgEnablePaytm,
      this.pgEnableMobikwik,
      this.paytmMobileUrl,
      this.mobikwikMobileUrl,
      this.pgEnableHdfc,
      this.paytmImage,
      this.rechargePopupMessage,
      this.energySource,
      this.lastReadingUpdatedDg,
      this.displayLoadSettingScreen,
      this.dailyDgUnit,
      this.dailyGridUnit,
      this.monthlyDgUnit,
      this.monthlyGridUnit,
      this.dailyDgAmount,
      this.dailyGridAmount,
      this.monthlyDgAmount,
      this.monthlyGridAmount,
      this.fixCharges,
      this.drCr,
      this.fixChargesMonthly,
      this.drCrMonthly,
      this.dgFixChargesMonthly,
      this.dgDrCrMonthly});

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}

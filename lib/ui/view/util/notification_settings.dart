import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/ui/view/util/dimen.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationSettings extends StatefulWidget {
  static const String id = 'notification _settings';
  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  SharedPreferences sharedPreferences;
  bool dgGridNotificationToggle = true;
  bool lowBalanceToggle = true;
  bool powerCutToggle = true;
  bool sourceToggle = true;
  bool rechargeToggle = true;

  String notificationSummary = 'YES';
  String lowBalanceSummary = 'YES';
  String powerCutSummary = 'YES';
  String sourceSummary = 'YES';
  String rechargeSummary = 'YES';

  double _dgAlertValue = 2.0;
  double _gridAlertValue = 2.0;

  TextEditingController _grid = TextEditingController();
  TextEditingController _dg = TextEditingController();

  @override
  void initState() {
    getSharedPref();
    super.initState();
  }

  void getSharedPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
    dgGridNotificationToggle =
        sharedPreferences.getBool('dgGridNotification') ?? true;
    notificationSummary = dgGridNotificationToggle ? 'YES' : 'NO';

    _dgAlertValue = sharedPreferences.getDouble('dgAlert') ?? 2.0;
    _gridAlertValue = sharedPreferences.getDouble('gridAlert') ?? 2.0;

    lowBalanceToggle = sharedPreferences.getBool('lowBalanceAlert') ?? true;
    lowBalanceSummary = lowBalanceToggle ? 'YES' : 'NO';

    powerCutToggle = sharedPreferences.getBool('powerAlert') ?? true;
    powerCutSummary = powerCutToggle ? 'YES' : 'NO';

    sourceToggle = sharedPreferences.getBool('sourceChangeAlert') ?? true;
    sourceSummary = sourceToggle ? 'YES' : 'NO';

    rechargeToggle = sharedPreferences.getBool('rechargeAlert') ?? true;
    rechargeSummary = rechargeToggle ? 'YES' : 'NO';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) => Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text('Consumption Exceeded Per Day',
                      style: TextStyle(
                          color: kColorSecondary,
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 10.0),
                SwitchListTile(
                  activeColor: kColorPrimary,
                  value: dgGridNotificationToggle,
                  title: Text(
                    'Notify',
                    style: kLabelTextStyle,
                  ),
                  subtitle: Text(
                    '$notificationSummary',
                    style: kSubLabelTextStyle,
                  ),
                  onChanged: (val) {
                    sharedPreferences.setBool('dgGridNotification', val);
                    setState(() {
                      dgGridNotificationToggle = val;

                      if (val) {
                        notificationSummary = 'YES';
                      } else {
                        notificationSummary = 'NO';
                      }
                    });
                  },
                ),
                ListTile(
                  title: Text(
                    'Grid',
                    style: dgGridNotificationToggle
                        ? kLabelTextStyle
                        : TextStyle(color: kTextColor.withOpacity(0.8)),
                  ),
                  subtitle: Text(
                    '$_gridAlertValue',
                    style: dgGridNotificationToggle
                        ? kLabelTextStyle
                        : TextStyle(color: kTextColor.withOpacity(0.8)),
                  ),
                  enabled: dgGridNotificationToggle,
                  onTap: () {
                    //showDialog(child: gridInputDialog(context), context: context);

                    showDialog(
                      context: context,
                      child: NumberPickerDialog.decimal(
                        minValue: 1,
                        maxValue: 20,
                        initialDoubleValue: _gridAlertValue,
                        title: new Text("Pick a value"),
                      ),
                    ).then((value) {
                      if (value != null) {
                        sharedPreferences.setDouble('gridAlert', value);

                        setState(() => _gridAlertValue = value);
                      }
                    });
                  },
                ),
                ListTile(
                  title: Text(
                    'DG',
                    style: dgGridNotificationToggle
                        ? kLabelTextStyle
                        : TextStyle(color: kTextColor.withOpacity(0.8)),
                  ),
                  subtitle: Text(
                    '$_dgAlertValue',
                    style: dgGridNotificationToggle
                        ? kLabelTextStyle
                        : TextStyle(color: kTextColor.withOpacity(0.8)),
                  ),
                  enabled: dgGridNotificationToggle ? true : false,
                  onTap: () {
                    //showDialog(child: dgInputDialog(context), context: context);

                    showDialog(
                      context: context,
                      child: NumberPickerDialog.decimal(
                        minValue: 1,
                        maxValue: 20,
                        initialDoubleValue: _gridAlertValue,
                        title: new Text("Pick a value"),
                      ),
                    ).then((value) {
                      if (value != null) {
                        sharedPreferences.setDouble('dgAlert', value);

                        setState(() => _dgAlertValue = value);
                      }
                    });
                  },
                ),
                _buildDivider(),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text('Miscelleneous',
                      style: TextStyle(
                          color: kColorSecondary,
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 10.0),
                SwitchListTile(
                  activeColor: kColorPrimary,
                  value: lowBalanceToggle,
                  title: Text(
                    'Low Balance',
                    style: kLabelTextStyle,
                  ),
                  subtitle: Text(
                    '$lowBalanceSummary',
                    style: kSubLabelTextStyle,
                  ),
                  onChanged: (val) {
                    sharedPreferences.setBool('lowBalanceAlert', val);
                    setState(() {
                      lowBalanceToggle = val;
                      if (val) {
                        lowBalanceSummary = 'YES';
                      } else {
                        lowBalanceSummary = 'NO';
                      }
                    });
                  },
                ),
                SwitchListTile(
                  activeColor: kColorPrimary,
                  value: powerCutToggle,
                  title: Text(
                    'Power Cut/Restore',
                    style: kLabelTextStyle,
                  ),
                  subtitle: Text(
                    '$powerCutSummary',
                    style: kSubLabelTextStyle,
                  ),
                  onChanged: (val) {
                    sharedPreferences.setBool('powerAlert', val);
                    setState(() {
                      powerCutToggle = val;
                      if (val) {
                        powerCutSummary = 'YES';
                      } else {
                        powerCutSummary = 'NO';
                      }
                    });
                  },
                ),
                SwitchListTile(
                  activeColor: kColorPrimary,
                  value: sourceToggle,
                  title: Text(
                    'Source Change',
                    style: kLabelTextStyle,
                  ),
                  subtitle: Text(
                    '$sourceSummary',
                    style: kSubLabelTextStyle,
                  ),
                  onChanged: (val) {
                    sharedPreferences.setBool('sourceChangeAlert', val);
                    setState(() {
                      sourceToggle = val;
                      if (val) {
                        sourceSummary = 'YES';
                      } else {
                        sourceSummary = 'NO';
                      }
                    });
                  },
                ),
                SwitchListTile(
                  activeColor: kColorPrimary,
                  value: rechargeToggle,
                  title: Text(
                    'Notify Recharge',
                    style: kLabelTextStyle,
                  ),
                  subtitle: Text(
                    '$rechargeSummary',
                    style: kSubLabelTextStyle,
                  ),
                  onChanged: (val) {
                    sharedPreferences.setBool('rechargeAlert', val);
                    setState(() {
                      rechargeToggle = val;
                      if (val) {
                        rechargeSummary = 'YES';
                      } else {
                        rechargeSummary = 'NO';
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Dialog dgInputDialog(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DG',
              style: kLabelTextStyle,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Add numerical value'),
              controller: _dg,
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  child: Text(
                    'OK',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: kTextColor),
                  ),
                  onPressed: () {
                    sharedPreferences.setDouble(
                        'dgAlert', double.parse(_dg.text));
                    setState(() {
                      this._dgAlertValue = double.parse(_dg.text);
                    });
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  onPressed: () {
                    _dg.clear();
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Dialog gridInputDialog(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Grid',
              style: kLabelTextStyle,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Add numerical value'),
              controller: _grid,
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  child: Text(
                    'OK',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: kTextColor),
                  ),
                  onPressed: () {
                    sharedPreferences.setDouble(
                        'gridAlert', double.parse(_grid.text));
                    setState(() {
                      this._gridAlertValue = double.parse(_grid.text);
                    });
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.blueGrey.shade100,
    );
  }
}

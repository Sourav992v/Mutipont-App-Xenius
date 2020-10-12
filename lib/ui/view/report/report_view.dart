import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/home_viewmodel.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:multipoint_app_xenius/ui/view/base_view.dart';
import 'package:multipoint_app_xenius/ui/view/recharge/recharge_webview_dialog.dart';
import 'package:multipoint_app_xenius/ui/view/report/comparative_report/comparative_report_view.dart';

import 'daily_report/daily_report_view.dart';
import 'monthly_report/monthly_report_view.dart';

class ReportView extends StatefulWidget {
  static const String id = 'ReportView';

  @override
  _ReportViewState createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
  HomeViewModel model = locator<HomeViewModel>();
  Resource resource;

  @override
  void initState() {
    model.getLoginResource().then((value) {
      setState(() {
        resource = value.body.resource;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ReportViewCard(),
      ),
    );
  }
}

class ReportViewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 16.0),
            height: 96.0,
            child: Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 0.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 4.0),
                  child: Container(
                      height: 64.0,
                      width: 64.0,
                      child: Image.asset('assets/images/ic_line_chart.png')),
                ),
                title: Center(
                  child: Text(
                    'Daily',
                    style: kLabelTextStyle,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, DailyReportView.id);
                },
              ),
            ),
          ),
          Container(
            height: 96.0,
            child: Card(
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Colors.white,
                margin: EdgeInsets.only(
                    top: 4.0, bottom: 8.0, left: 16.0, right: 16.0),
                child: ListTile(
                  leading: Image.asset('assets/images/ic_bar_chart.png'),
                  title: Center(
                    child: Text(
                      'Monthly',
                      style: kLabelTextStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MonthlyReportView.id);
                  },
                )),
          ),
          Container(
            height: 96.0,
            child: Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 4.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading:
                    Image.asset('assets/images/ic_bar_comparative_chart.png'),
                title: Center(
                  child: Text(
                    'Comparative',
                    style: kLabelTextStyle,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, ComparativeReportView.id);
                },
              ),
            ),
          ),
          Container(
            height: 96.0,
            child: Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 4.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                  leading: Image.asset('assets/images/ic_tariff.png'),
                  title: Center(
                    child: Text(
                      'Current Tariff',
                      style: kLabelTextStyle,
                    ),
                  ),
                  onTap: () {
                    showBottomSheet(
                        context: context,
                        elevation: 5.0,
                        backgroundColor: Colors.transparent,
                        builder: (builder) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 2,
                              margin: EdgeInsets.only(
                                  top: 2.0, left: 8.0, right: 8.0, bottom: 8.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    //background color of box
                                    BoxShadow(
                                      color: kColorPrimaryDark,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(12.0),
                                      topRight: const Radius.circular(12.0))),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 48, vertical: 24),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      width: 72.0,
                                      height: 2.0,
                                      color: Colors.blueGrey.shade100,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: 1,
                                        itemBuilder: (context, index) {
                                          var icon;
                                          var title;

                                          return Card(
                                            elevation: 2.0,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3,
                                                  child: Text(
                                                    'DGghgkhkhkkbfuyfhhjfcgcghc',
                                                    style: TextStyle(
                                                      color: kColorAccentRed,
                                                      fontFamily: 'Lato',
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 24.0,
                                                          right: 24.0),
                                                  child: Container(
                                                    width: 1,
                                                    height: 24.0,
                                                    child: VerticalDivider(
                                                      color: kColorAccentRed,
                                                      thickness: 1,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3,
                                                  child: Text('gfxhcuyvhvvy',
                                                      style: kLabelTextStyle,
                                                      maxLines: 5,
                                                      textAlign:
                                                          TextAlign.center),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                        });
                  }),
            ),
          ),
          Container(
            height: 96.0,
            child: Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 4.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset('assets/images/ic_bill.png'),
                ),
                title: Center(
                  child: Text(
                    'Bill Download',
                    style: kLabelTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget totalBalance(Resource loginResource) {
  double total = loginResource.daily_grid_amount +
      loginResource.daily_dg_amount +
      loginResource.fix_charges;
  return Card(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.0),
    ),
    color: kTextBackgroundGrey,
    margin: EdgeInsets.only(top: 2.0, bottom: 8.0, left: 16.0, right: 16.0),
    child: ListTile(
      leading: Text(
        'Total',
        style: kSubLabelTextStyle,
      ),
      trailing: Text(
        '$total',
        style: kValueTextStyle,
      ),
    ),
  );
}

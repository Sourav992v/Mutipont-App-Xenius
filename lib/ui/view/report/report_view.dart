import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/home_viewmodel.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:multipoint_app_xenius/ui/view/base_view.dart';
import 'package:multipoint_app_xenius/ui/view/recharge/recharge_webview_dialog.dart';

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
    return BaseView<HomeViewModel>(
        onModelReady: (model) => model.getLoginResource(),
        builder: (context, value, child) => resource != null
            ? Container(
                margin: EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    ReportViewCard(resource),
                  ],
                ),
              )
            : SpinKitFadingCircle(
                color: kColorPrimary,
                size: 24.0,
              ));
  }
}

class ReportViewCard extends StatelessWidget {
  ReportViewCard(this.loginResource);
  final Resource loginResource;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
                                margin: EdgeInsets.only(
                                    top: 2.0, left: 8.0, right: 8.0),
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
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          var icon;
                                          var title;
                                          if (index == 0) {
                                            icon = Image.asset(
                                              'assets/images/ic_hdfc.png',
                                              height: 24.0,
                                              width: 24.0,
                                            );
                                            title = Text(
                                              'HDFC',
                                              style: kLabelTextStyle,
                                            );
                                          } else if (index == 1) {
                                            icon = Image.asset(
                                              'assets/images/ic_paytm.png',
                                              height: 24.0,
                                              width: 24.0,
                                            );
                                            title = Text(
                                              'PAYTM',
                                              style: kLabelTextStyle,
                                            );
                                          } else {
                                            icon = Image.asset(
                                              'assets/images/ic_mobikwik.png',
                                              height: 24.0,
                                              width: 24.0,
                                            );
                                            title = Text(
                                              'MOBIKWIK',
                                              style: kLabelTextStyle,
                                            );
                                          }
                                          return Card(
                                            elevation: 2.0,
                                            child: ListTile(
                                              leading: icon,
                                              title: Center(
                                                child: title,
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color: kColorAccentGreen,
                                              ),
                                              onTap: () {
                                                var url;
                                                if (index == 0) {
                                                  url =
                                                      'https://netbanking.hdfcbank.com/netbanking/';
                                                } else if (index == 1) {
                                                  url = 'https://paytm.com/';
                                                } else {
                                                  url =
                                                      'https://www.mobikwik.com/';
                                                }
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                        return RechargeProgressDialog(
                                                            url: url);
                                                      },
                                                      fullscreenDialog: true),
                                                );
                                              },
                                            ),
                                          );
                                        },
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

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/home_viewmodel.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:multipoint_app_xenius/ui/view/base_view.dart';

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
            Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 16.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Icon(Icons.insert_chart),
                title: Center(
                  child: Text(
                    'Daily',
                    style: kValueTextStyle,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 2.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Icon(Icons.insert_chart),
                title: Center(
                  child: Text(
                    'Monthly',
                    style: kValueTextStyle,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 2.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Icon(Icons.insert_chart),
                title: Center(
                  child: Text(
                    'Comparartive',
                    style: kValueTextStyle,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 2.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Icon(Icons.insert_chart),
                title: Center(
                  child: Text(
                    'Current Tariff',
                    style: kValueTextStyle,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              margin: EdgeInsets.only(
                  top: 2.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Icon(Icons.insert_chart),
                title: Center(
                  child: Text(
                    'Bill Download',
                    style: kValueTextStyle,
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
  double total = loginResource.dailyGridAmount +
      loginResource.dailyDgAmount +
      loginResource.fixCharges;
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

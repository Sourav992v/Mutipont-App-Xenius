import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/home_viewmodel.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:multipoint_app_xenius/ui/view/base_view.dart';

class MonthConsumtion extends StatefulWidget {
  static const String id = 'MonthConsumtion';

  @override
  _MonthConsumtionState createState() => _MonthConsumtionState();
}

class _MonthConsumtionState extends State<MonthConsumtion> {
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
        builder: (context, value, child) => resource != null
            ? Container(
                margin: EdgeInsets.all(4.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: Colors.white24,
                  elevation: 5.0,
                  child: Column(
                    children: [
                      MonthConsumptionCard(resource),
                    ],
                  ),
                ),
              )
            : SpinKitFadingCircle(
                color: kColorPrimary,
                size: 24.0,
              ));
  }
}

class MonthConsumptionCard extends StatelessWidget {
  const MonthConsumptionCard(this.monthlyResource);
  final Resource monthlyResource;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Month Consumption',
              style: kLabelTextStyle,
            ),
          ),
          Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            color: kTextBackgroundGrey,
            margin: EdgeInsets.only(
                top: 12.0, bottom: 4.0, left: 16.0, right: 16.0),
            child: ListTile(
              leading: Text(
                'Grid',
                style: kSubLabelTextStyle,
              ),
              trailing: Text(
                '${monthlyResource.monthlyGridAmount}',
                style: kValueTextStyle,
              ),
            ),
          ),
          Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            color: kTextBackgroundGrey,
            margin:
                EdgeInsets.only(top: 2.0, bottom: 4.0, left: 16.0, right: 16.0),
            child: ListTile(
              leading: Text(
                'DG',
                style: kSubLabelTextStyle,
              ),
              trailing: Text(
                '${monthlyResource.monthlyDgAmount}',
                style: kValueTextStyle,
              ),
            ),
          ),
          Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            color: kTextBackgroundGrey,
            margin:
                EdgeInsets.only(top: 2.0, bottom: 4.0, left: 16.0, right: 16.0),
            child: ListTile(
                leading: Text(
                  'Fixed\nCharges',
                  style: kSubLabelTextStyle,
                ),
                trailing: Text(
                  '${monthlyResource.fixChargesMonthly}',
                  style: kValueTextStyle,
                )),
          ),
          monthlyTotalCharges(monthlyResource),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Values in INR',
              style: kSubValueTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  Card monthlyTotalCharges(Resource monthlyResource) {
    double total = monthlyResource.monthlyGridAmount +
        monthlyResource.monthlyDgAmount +
        monthlyResource.fixChargesMonthly;
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
}

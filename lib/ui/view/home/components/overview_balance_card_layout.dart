import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/home_viewmodel.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:multipoint_app_xenius/ui/view/base_view.dart';

class OverviewBalance extends StatefulWidget {
  static const String id = 'OverviewBalance';

  @override
  _OverviewBalanceState createState() => _OverviewBalanceState();
}

class _OverviewBalanceState extends State<OverviewBalance> {
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
      builder: (context, value, child) {
        return Container(
          child: resource == null
              ? Center(
                  child: SpinKitFadingCircle(
                    color: kColorPrimaryDark,
                    size: 24.0,
                  ),
                )
              : Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  margin: EdgeInsets.all(12.0),
                  color: Colors.white24,
                  elevation: 5.0,
                  child: Column(
                    children: [
                      GridBalanceCard(resource),
                      SizedBox(
                        height: 8.0,
                      ),
                      DGBalanceCard(resource),
                    ],
                  ),
                ),
        );
      },
    );
  }
}

class GridBalanceCard extends StatelessWidget {
  GridBalanceCard(this.resource);
  final Resource resource;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: EdgeInsets.only(top: 0.0, bottom: 4.0, left: 0.0, right: 0.0),
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grid',
                    style: kLabelTextStyle,
                  ),
                  SpinKitDoubleBounce(
                    color: kColorPrimary,
                    size: 24.0,
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Start Time',
                    style: kSubLabelTextStyle,
                  ),
                  Text(
                    '${resource.lastReadingUpdated}',
                    style: kSubValueTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Consumption',
                    style: kSubLabelTextStyle,
                  ),
                  Text(
                    '${resource.gridReading} ${resource.readingUnit}',
                    style: kSubValueTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Balance',
                    style: kSubLabelTextStyle,
                  ),
                  Text(
                    'INR ${resource.balanceAmount}',
                    style: kSubValueTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sanctioned Load',
                    style: kSubLabelTextStyle,
                  ),
                  Text(
                    '${resource.gridSanctionedLoad} ${resource.loadUnit}',
                    style: kSubValueTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget energySourceGrid(Resource resource) {
  String energySource = resource.energySource;
  return energySource == "Grid"
      ? SpinKitDoubleBounce(
          color: kColorPrimary,
          size: 24.0,
        )
      : SpinKitDoubleBounce(
          color: Colors.transparent,
          size: 0.0,
        );
}

class DGBalanceCard extends StatelessWidget {
  const DGBalanceCard(this.resource);
  final Resource resource;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: EdgeInsets.only(top: 0.0, bottom: 4.0, left: 0.0, right: 0.0),
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DG',
                    style: kLabelTextStyle,
                  ),
                  SpinKitDoubleBounce(
                    color: kColorAccentRed,
                    size: 24.0,
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Start Time',
                    style: kSubLabelTextStyle,
                  ),
                  Text(
                    '${resource.dgLastReadingUpdated}',
                    style: kSubValueTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Consumption',
                    style: kSubLabelTextStyle,
                  ),
                  Text(
                    '${resource.dgReading} ${resource.readingUnit}',
                    style: kSubValueTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Balance',
                    style: kSubLabelTextStyle,
                  ),
                  Text(
                    'INR ${resource.dgBalanceAmount}',
                    style: kSubValueTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sanctioned Load',
                    style: kSubLabelTextStyle,
                  ),
                  Text(
                    '${resource.dgSanctionedLoad} ${resource.loadUnit}',
                    style: kSubValueTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DgEnergySource extends StatelessWidget {
  const DgEnergySource(this.resource);
  final Resource resource;

  @override
  Widget build(BuildContext context) {
    return resource.energySource == 'DG'
        ? SpinKitDoubleBounce(
            color: kColorAccentRed,
            size: 24.0,
          )
        : SpinKitDoubleBounce(
            color: Colors.transparent,
            size: 0.0,
          );
  }
}

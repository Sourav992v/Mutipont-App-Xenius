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
                  resource.energy_source == 'Grid'
                      ? SpinKitDoubleBounce(
                          color: kColorPrimary,
                          size: 24.0,
                        )
                      : Text(''),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  resource.energy_source == 'Grid'
                      ? Text(
                          'Start Time',
                          style: kSubLabelTextStyle,
                        )
                      : Text(
                          'Off',
                          style: kSubLabelTextStyle,
                        ),
                  resource.energy_source == 'Grid'
                      ? Text(
                          '${resource.last_reading_updated}',
                          style: kSubValueTextStyle,
                        )
                      : Text(
                          '',
                          style: kSubLabelTextStyle,
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
                    '${resource.grid_reading} ${resource.reading_unit}',
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
                    'INR ${resource.balance_amount}',
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
                    '${resource.grid_sanctioned_load} ${resource.load_unit}',
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
  String energySource = resource.energy_source;
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
                  resource.energy_source == 'DG'
                      ? SpinKitDoubleBounce(
                          color: kColorAccentRed,
                          size: 24.0,
                        )
                      : Text(''),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  resource.energy_source == 'DG'
                      ? Text(
                          'Start Time',
                          style: kSubLabelTextStyle,
                        )
                      : Text('Off', style: kSubLabelTextStyle),
                  resource.energy_source == 'DG'
                      ? Text(
                          '${resource.dg_last_reading_updated}',
                          style: kSubValueTextStyle,
                        )
                      : Text(''),
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
                    '${resource.dg_reading} ${resource.reading_unit}',
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
                    'INR ${resource.dg_balance_amount}',
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
                    '${resource.dg_sanctioned_load} ${resource.load_unit}',
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
    return resource.energy_source == 'DG'
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

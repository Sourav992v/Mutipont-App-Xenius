import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/components/rouded_button.dart';
import 'package:multipoint_app_xenius/components/rouded_button_recharge.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/ui/view/recharge/recharge_status_dialog.dart';

enum SingingCharacter { grid, dg }

class RechargeView extends StatefulWidget {
  @override
  _RechargeViewState createState() => _RechargeViewState();
}

class _RechargeViewState extends State<RechargeView>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  SingingCharacter _character = SingingCharacter.grid;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        Container(
          decoration: BoxDecoration(color: kColorPrimary),
          child: TabBar(
            controller: _controller,
            tabs: [
              Tab(
                text: 'Online',
              ),
              Tab(text: 'Coupon'),
            ],
            indicatorColor: kColorAccentRed,
          ),
        ),
        Container(
          height: 128.0,
          child: TabBarView(
            controller: _controller,
            children: <Widget>[
              Card(color: Colors.white, child: rechargeTab()),
              Card(
                child: rechargeTabCoupon(),
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin:
              EdgeInsets.only(top: 16.0, bottom: 16.0, left: 4.0, right: 4.0),
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
                      'Available balance',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      'Value',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Updated on',
                      style: kSubLabelTextStyle,
                    ),
                    Text(
                      '2-10-2020 12:00:56',
                      style: kSubValueTextStyle,
                    ),
                  ],
                ),
                SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Recharge',
                      style: kSubLabelTextStyle,
                    ),
                    Text(
                      '2-10-2020 12:00:56',
                      style: kSubValueTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          child: new ListTile(
            title: const Text('Some more information'),
          ),
        ),
      ],
    ));
  }

  Widget rechargeTab() {
    return ListTile(
      leading: Container(
        width: 150.0,
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(hintText: 'Enter Amount...'),
        ),
      ),
      title: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Grid'),
            leading: Radio(
              value: SingingCharacter.grid,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('DG'),
            leading: Radio(
              value: SingingCharacter.dg,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
      trailing: RoundedButtonRecharge(
        text: 'Pay',
        press: () {},
        color: kColorPrimary,
        textColor: Colors.white,
        width: 72.0,
        height: 72.0,
      ),
    );
  }

  Widget rechargeTabCoupon() {
    return ListTile(
      leading: Container(
        width: 150.0,
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: 'Enter Coupon...',
          ),
        ),
      ),
      title: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Grid'),
            leading: Radio(
              value: SingingCharacter.grid,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('DG'),
            leading: Radio(
              value: SingingCharacter.dg,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
      trailing: RoundedButtonRecharge(
        text: 'Submit',
        press: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => RechargeDialog(
              title: "Success",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              buttonText: "Okay",
            ),
          );
        },
        color: kColorPrimary,
        textColor: Colors.white,
        width: 72.0,
        height: 72.0,
      ),
    );
  }
}

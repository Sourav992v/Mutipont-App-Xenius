import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/components/rouded_button.dart';
import 'package:multipoint_app_xenius/components/rouded_button_recharge.dart';
import 'package:multipoint_app_xenius/constants.dart';

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
          child: new ListTile(
            title: const Text('Some more information'),
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
        press: () {},
        color: kColorPrimary,
        textColor: Colors.white,
        width: 72.0,
        height: 72.0,
      ),
    );
  }
}

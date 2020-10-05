import 'dart:collection';

import 'package:flutter/material.dart';

Map<String, Image> images = {
  '0': Image.asset('assets/images/ic_coupon_icon.png'),
  '1': Image.asset('assets/images/ic_hdfc.png'),
  '2': Image.asset('assets/images/ic_mobikwik.png'),
  '3': Image.asset('assets/images/ic_paytm.png')
};

class RechargeHistoryView extends StatefulWidget {
  @override
  _RechargeHistoryViewState createState() => _RechargeHistoryViewState();
}

class _RechargeHistoryViewState extends State<RechargeHistoryView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Card(
                  child: RechargeListItem(
                index: index,
                icon: Icon(Icons.account_balance_wallet),
                amount: 'Flutter 1.0 Launch',
                transactionId: 'Dash',
                date: 'Dec 28',
              )),
            );
          }),
    );
  }
}

class _RechargeDescription extends StatelessWidget {
  _RechargeDescription({
    Key key,
    this.amount,
    this.transactionId,
    this.date,
  }) : super(key: key);

  final String amount;

  final String transactionId;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$amount',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '$transactionId',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
              Text(
                '$date',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RechargeListItem extends StatelessWidget {
  RechargeListItem({
    Key key,
    this.index,
    this.icon,
    this.amount,
    this.transactionId,
    this.date,
  }) : super(key: key);

  final int index;
  final Icon icon;
  final String amount;

  final String transactionId;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: images['$index'],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: _RechargeDescription(
                  amount: amount,
                  transactionId: transactionId,
                  date: date,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

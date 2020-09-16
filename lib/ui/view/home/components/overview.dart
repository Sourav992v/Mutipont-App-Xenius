import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/ui/view/home/components/overview_balance_card_layout.dart';
import 'package:multipoint_app_xenius/ui/view/home/components/piechart_value_lines.dart';

import 'month_consumption.dart';
import 'today_consumption.dart';

List<Widget> layoutList = [
  OverviewBalance(),
  TodayConsumption(),
  MonthConsumtion()
];

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            PageViewBalance(),
            PiechartRecyclerView(),
          ],
        ),
      ),
    );
  }
}

class PageViewBalance extends StatefulWidget {
  @override
  _PageViewState createState() => _PageViewState();
}

class _PageViewState extends State<PageViewBalance> {
  int _current = 0;

  final List<Widget> imageSliders = layoutList
      .map(
        (item) => Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: item),
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
              autoPlay: true,
              height: MediaQuery.of(context).size.height * 0.45,
              viewportFraction: 1,
              enlargeCenterPage: false,
              pauseAutoPlayOnTouch: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: layoutList.map((url) {
              int index = layoutList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'list_item.dart';

class BarChartListView extends StatefulWidget {
  final List<ListItem> items;

  const BarChartListView({Key key, this.items}) : super(key: key);
  @override
  _BarChartListViewState createState() => _BarChartListViewState();
}

class _BarChartListViewState extends State<BarChartListView> {
  @override
  Widget build(BuildContext context) {
    return Container(child: _buildList(context));
  }

  Widget _buildList(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      child: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          final item = widget.items[index];
          return Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            margin: EdgeInsets.only(
                top: 16.0, bottom: 16.0, left: 16.0, right: 16.0),
            color: Colors.white,
            shadowColor: Colors.white54,
            elevation: 16.0,
            child: ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildChartTitle(context),
            ),
          );
        },
      ),
    );
  }
}

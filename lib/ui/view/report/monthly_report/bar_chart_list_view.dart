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
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(24, 24, 24, 1.0),
        canvasColor: Color.fromRGBO(46, 49, 49, 1.0),
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: Text('Charts in List View'),
        ),
        body: _buildList(context),
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return ListView.separated(
      itemCount: widget.items.length,
      separatorBuilder: (BuildContext context, int index) => Divider(
        thickness: 2.0,
      ),
      itemBuilder: (context, index) {
        final item = widget.items[index];
        return ListTile(
          title: item.buildTitle(context),
          subtitle: item.buildChartTitle(context),
        );
      },
    );
  }
}

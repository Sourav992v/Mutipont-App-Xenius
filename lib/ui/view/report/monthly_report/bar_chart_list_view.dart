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
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            final item = widget.items[index];
            return Container(
              margin: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: item.buildTitle(context),
                  subtitle: item.buildChartTitle(context),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CollapsingToolBar extends StatelessWidget {
  const CollapsingToolBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 24.0,
              width: 24.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/ic_person_menu.png')),
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.more_vert),
            )),
      ],
      expandedHeight: 128.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Unit No',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 14.0,
          ),
          textAlign: TextAlign.justify,
        ),
        background: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/images/ic_xenius_logo.png',
            fit: BoxFit.contain,
            color: Color.fromRGBO(
              255,
              255,
              255,
              0.5,
            ),
          ),
        ),
      ),
    );
  }
}

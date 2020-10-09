import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/ui/view/login/login_view.dart';
import 'package:multipoint_app_xenius/ui/view/profile/user_profile_dialog.dart';
import 'package:multipoint_app_xenius/ui/view/util/dg_event_logging.dart';
import 'package:multipoint_app_xenius/ui/view/util/marquee_widget.dart';
import 'package:multipoint_app_xenius/ui/view/util/notice.dart';
import 'package:multipoint_app_xenius/ui/view/util/notification_settings.dart';

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
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NoticeDialog();
                  },
                  fullscreenDialog: true));
            },
            child: Container(
              height: 24.0,
              width: 24.0,
              child: Icon(Icons.notifications),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(NotificationSettings.id);
            },
            child: Container(
              height: 24.0,
              width: 24.0,
              child: Icon(Icons.settings),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return DgEventLogging();
                  },
                  fullscreenDialog: true));
            },
            child: Container(
              height: 24.0,
              width: 24.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/ic_dg_event_logging.png')),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute<Null>(
                  builder: (BuildContext context) {
                    return UserProfileDialog();
                  },
                  fullscreenDialog: true));
            },
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
          child: Container(
            height: 16.0,
            child: PopupMenuButton(
              onSelected: (value) {
                if (value == 1) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      LoginView.id, (Route<dynamic> route) => false);
                }
              },
              color: kColorAccentRed,
              child: Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      value: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          'Sign out',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ))
                ];
              },
            ),
          ),
        ),
      ],
      expandedHeight: 128.0,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        centerTitle: true,
        title: Container(
          margin: EdgeInsets.only(left: 24.0, top: 48.0),
          child: ListView(
            children: [
              Text('Unit No\nXYZ',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                  )),
              Padding(
                padding:
                    const EdgeInsets.only(top: 16.0, right: 24.0, bottom: 16.0),
                child: MarqueeWidget(
                    direction: Axis.horizontal,
                    child: Text(
                      "This text is to long to be shown in just one line. This text is to long to be shown in just one line",
                      style: TextStyle(
                          backgroundColor: kColorAccentRed, fontSize: 12.0),
                    )),
              )
            ],
          ),
        ),
        background: Container(
          height: 96,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/ui/view/recharge/recharge_history/recharge_history_view.dart';
import 'package:multipoint_app_xenius/ui/view/util/change_password_view.dart';

class UserProfileDialog extends StatefulWidget {
  @override
  _UserProfileDialogState createState() => _UserProfileDialogState();
}

class _UserProfileDialogState extends State<UserProfileDialog> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: ProfileSliverAppBar(expandedHeight: 128.0),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 96.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 48.0, bottom: 8.0),
                        child: Text(
                          'Ram Sampat',
                          maxLines: 2,
                          style: kLabelTextStyle,
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/identification.png',
                          height: 24.0,
                          width: 24.0,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '56789999hsjskakaallahb nssbajaahsgsgsg',
                            maxLines: 2,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          color: kColorPrimary,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '56789999',
                            maxLines: 2,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.call,
                          color: kColorPrimary,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('56789999'),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          color: kColorPrimary,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '5sdjckjskjndlvnd2gdh@xnncnxczm.com',
                            maxLines: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 64.0),
                          child: ExpansionTile(
                            onExpansionChanged: (value) {
                              setState(() {
                                isExpanded = value;
                              });
                            },
                            leading: Icon(
                              Icons.settings_remote,
                              color: Colors.greenAccent[400],
                            ),
                            title: Text(
                              'Power Control',
                              style: kLabelTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            trailing: isExpanded
                                ? Image.asset(
                                    'assets/images/ic_arrow_up.png',
                                    height: 24.0,
                                    width: 24.0,
                                  )
                                : Image.asset(
                                    'assets/images/ic_arrow_down.png',
                                    height: 24.0,
                                    width: 24.0,
                                  ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 64),
                                child: ListTile(
                                  title: Text('Meter Restore'),
                                  trailing: Icon(
                                    Icons.restore,
                                    color: Colors.greenAccent[400],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 64.0),
                                child: ListTile(
                                  title: Text('Verify Balance'),
                                  trailing: Icon(
                                    Icons.check_box,
                                    color: Colors.greenAccent[400],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 64.0),
                          child: ExpansionTile(
                            onExpansionChanged: (value) {
                              setState(() {
                                isExpanded = value;
                              });
                            },
                            leading: Image.asset(
                              'assets/images/ic_support.png',
                              height: 24.0,
                              width: 24.0,
                            ),
                            title: Text(
                              'Help & Support',
                              style: kLabelTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            trailing: isExpanded
                                ? Image.asset(
                                    'assets/images/ic_up_arrow.png',
                                    height: 24.0,
                                    width: 24.0,
                                  )
                                : Image.asset(
                                    'assets/images/ic_down_arrow.png',
                                    height: 24.0,
                                    width: 24.0,
                                  ),
                            children: [
                              ListTile(
                                title: Text(
                                  'Facility Support Team',
                                  style: kLabelTextStyle,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Lotus',
                                  style: kSubLabelTextStyle,
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.call,
                                  color: kColorPrimaryDark,
                                ),
                                title: Text('1123445556'),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: kColorPrimaryDark,
                                ),
                                title: Text('data'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: ListTile(
                                  title: Text(
                                    'Radius Support Team',
                                    style: kLabelTextStyle,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Radius',
                                  style: kSubLabelTextStyle,
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.call,
                                  color: kColorPrimaryDark,
                                ),
                                title: Text('1123445556'),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: kColorPrimaryDark,
                                ),
                                title: Text('data'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Container(
                      margin: EdgeInsets.only(left: 64.0, right: 56),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/ic_change_password.png',
                          height: 24.0,
                          width: 24.0,
                        ),
                        title: Text(
                          'Change Password',
                          style: kLabelTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        trailing: Icon(
                          Icons.arrow_right,
                          color: Colors.greenAccent,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) {
                                  return ChangePassword();
                                },
                                fullscreenDialog: true),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ]),
            )
          ],
        ));
  }
}

class ProfileSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  ProfileSliverAppBar({@required this.expandedHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        AppBar(
          leading: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          title: Text(
            'User Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Positioned(
            top: expandedHeight / 2 - shrinkOffset,
            left: MediaQuery.of(context).size.width / 4,
            child: Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: Container(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    margin: EdgeInsets.all(24),
                    height: 96.0,
                    width: 96.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kColorPrimaryDark),
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/ic_person_menu.png')),
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 72.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

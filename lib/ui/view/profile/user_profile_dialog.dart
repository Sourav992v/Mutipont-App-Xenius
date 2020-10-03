import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';

class UserProfileDialog extends StatefulWidget {
  @override
  _UserProfileDialogState createState() => _UserProfileDialogState();
}

class _UserProfileDialogState extends State<UserProfileDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: ProfileSliverAppBar(expandedHeight: 128.0),
              pinned: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((_, index) => Card(
                      child: ListTile(
                        title: Text("Index: $index"),
                      ),
                    )))
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
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Container(
                    height: 128.0,
                    width: 128.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
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

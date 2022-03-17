// import 'package:aquatic_flutter/screens/Dashboard/AdminDashboardButtons.dart';
import 'package:flutter/material.dart';

// import 'package:aquatic_flutter/screens/Dashboard/UserDashboardButtons.dart';

// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:shipping_aquatic/screens/Dashboard/AdminDashboardButtons.dart';

class AdminDashboardBody extends StatefulWidget {
  const AdminDashboardBody({
    Key key,
  }) : super(key: key);

  @override
  _AdminDashboardBodyState createState() => _AdminDashboardBodyState();
}

class _AdminDashboardBodyState extends State<AdminDashboardBody> {
  // ignore: unused_field
  int _currentIndex = 0;
  PageController _pageController;
  Color navBarItemColor = Color(0xff0bb783);

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            AdminDashboardButtons(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavyBar(
      //   containerHeight: 80,
      //   iconSize: 25,
      //   animationDuration: Duration(milliseconds: 300),
      //   selectedIndex: _currentIndex,
      //   onItemSelected: (index) {
      //     setState(() => _currentIndex = index);
      //     _pageController.jumpToPage(index);
      //   },
      //   items: <BottomNavyBarItem>[
      //     BottomNavyBarItem(
      //       activeColor: navBarItemColor,
      //       inactiveColor: Colors.grey,
      //       title: Text('Dashboard'),
      //       icon: Icon(LineAwesomeIcons.alternate_tachometer),
      //     ),
      //     BottomNavyBarItem(
      //       activeColor: navBarItemColor,
      //       inactiveColor: Colors.grey,
      //       title: Text('Users'),
      //       icon: Icon(LineAwesomeIcons.user),
      //     ),
      //     BottomNavyBarItem(
      //       activeColor: navBarItemColor,
      //       inactiveColor: Colors.grey,
      //       title: Text('Acc Info'),
      //       icon: Icon(LineAwesomeIcons.info_circle),
      //     ),
      //     BottomNavyBarItem(
      //       activeColor: navBarItemColor,
      //       inactiveColor: Colors.grey,
      //       title: Text('Upcharge'),
      //       icon: Icon(LineAwesomeIcons.coins),
      //     ),
      //     BottomNavyBarItem(
      //       activeColor: navBarItemColor,
      //       inactiveColor: Colors.grey,
      //       title: Text('History'),
      //       icon: Icon(LineAwesomeIcons.history),
      //     ),
      //   ],
      // ),
    );
  }
}

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shipping_aquatic/screens/AddressBook/AddressBookView.dart';
import 'package:shipping_aquatic/screens/Dashboard/DashbordButtons.dart';
import 'package:shipping_aquatic/screens/Ship/ShippingView.dart';
import 'package:shipping_aquatic/screens/shipping/ShopScreen.dart';
import 'package:shipping_aquatic/screens/shipping/ShoppingCartScreen.dart';
import 'package:shipping_aquatic/screens/shipping/LoginScreen.dart';
import 'package:shipping_aquatic/screens/shipping/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shipping_aquatic/utils/SizeConfig.dart';

class HomeScreen extends StatefulWidget {
  @override
  _ShoppingFullAppPageState createState() => _ShoppingFullAppPageState();
}

class _ShoppingFullAppPageState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  TabController _tabController;

  _handleTabSelection() {
    setState(
      () {
        _currentIndex = _tabController.index;
      },
    );
  }

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    _tabController.animation.addListener(
      () {
        final aniValue = _tabController.animation.value;
        if (aniValue - _currentIndex > 0.5) {
          setState(
            () {
              _currentIndex = _currentIndex + 1;
            },
          );
        } else if (aniValue - _currentIndex < -0.5) {
          setState(
            () {
              _currentIndex = _currentIndex - 1;
            },
          );
        }
      },
    );
    super.initState();
  }

  onTapped(value) {
    setState(
      () {
        _currentIndex = value;
      },
    );
  }

  dispose() {
    super.dispose();
    _tabController.dispose();
  }

  ThemeData themeData;
  Color primaryColor = Color(0xff0bb783);

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    MySize().init(context);

    return Scaffold(
      appBar: appBar(context),
      bottomNavigationBar: bottomAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ShippingView();
              },
            ),
          );
        },
        child: Icon(
          LineAwesomeIcons.plane_departure,
          color: primaryColor,
        ),
        backgroundColor: themeData.backgroundColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          DashboardButtons(
            rootContext: context,
          ),
          AddressBookView(),
          ShopScreen(
            rootContext: context,
          ),
          ProfileScreen(),
        ],
      ),
    );
  }

  BottomAppBar bottomAppBar() {
    return BottomAppBar(
      elevation: 0,
      shape: CircularNotchedRectangle(),
      child: Container(
        decoration: BoxDecoration(
          color: themeData.bottomAppBarTheme.color,
          boxShadow: [
            BoxShadow(
              color: themeData.cardTheme.shadowColor.withAlpha(40),
              blurRadius: 3,
              offset: Offset(0, -3),
            ),
          ],
        ),
        padding: EdgeInsets.only(top: 12, bottom: 12),
        child: TabBar(
          controller: _tabController,
          indicator: BoxDecoration(),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: themeData.colorScheme.primary,
          tabs: <Widget>[
            Container(
              child: (_currentIndex == 0)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MdiIcons.viewDashboard,
                          color: primaryColor,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: new BorderRadius.all(
                              Radius.circular(2.5),
                            ),
                          ),
                          height: 5,
                          width: 5,
                        )
                      ],
                    )
                  : Icon(
                      MdiIcons.viewDashboardOutline,
                      color: themeData.colorScheme.onBackground,
                    ),
            ),
            Container(
              margin: EdgeInsets.only(right: 24),
              child: (_currentIndex == 1)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MdiIcons.accountBox,
                          color: primaryColor,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: new BorderRadius.all(
                              Radius.circular(2.5),
                            ),
                          ),
                          height: 5,
                          width: 5,
                        )
                      ],
                    )
                  : Icon(
                      MdiIcons.accountBoxOutline,
                      color: themeData.colorScheme.onBackground,
                    ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: (_currentIndex == 2)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MdiIcons.shopping,
                          color: primaryColor,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: new BorderRadius.all(
                              Radius.circular(2.5),
                            ),
                          ),
                          height: 5,
                          width: 5,
                        )
                      ],
                    )
                  : Icon(
                      MdiIcons.shoppingOutline,
                      color: themeData.colorScheme.onBackground,
                    ),
            ),
            Container(
              child: (_currentIndex == 3)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MdiIcons.account,
                          color: primaryColor,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: new BorderRadius.all(
                              Radius.circular(2.5),
                            ),
                          ),
                          height: 5,
                          width: 5,
                        )
                      ],
                    )
                  : Icon(
                      MdiIcons.accountOutline,
                      color: themeData.colorScheme.onBackground,
                    ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 2,

      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight,
      //           colors: <Color>[Color(0xff24b04b), Color(0xff0bb783)]),),
      // ),
      title: Container(
        height: 50,
        child: Image.asset('assets/images/Aquatic.png'),
      ),
      centerTitle: true,
      actions: <Widget>[
        Container(
          // padding: EdgeInsets.only(right: 15),
          child: IconButton(
            icon: const Icon(
              MdiIcons.cartOutline,
              size: 30,
            ),
            tooltip: 'Shopping Cart',
            onPressed: () async {
              // SharedPreferences prefs =
              //     await SharedPreferences.getInstance();
              // prefs.remove("token");
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ShoppingCartScreen(),
                  ),
              );
            },
          ),
        ),
        Container(
          // padding: EdgeInsets.only(right: 15),
          child: IconButton(
            icon: const Icon(
              MdiIcons.logout,
              size: 30,
            ),
            tooltip: 'Login',
            onPressed: () async {
              // SharedPreferences prefs =
              //     await SharedPreferences.getInstance();
              // prefs.remove("token");
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                  (Route<dynamic> route) => false);
            },
          ),
        ),
      ],
    );
  }
}

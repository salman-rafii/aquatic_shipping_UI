import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shipping_aquatic/screens/Ship/OrderSummaryScreen.dart';
import 'package:shipping_aquatic/screens/Ship/PrintShippingScreen.dart';
import 'package:shipping_aquatic/screens/Ship/ShippingDetails.dart';
import 'package:shipping_aquatic/screens/Ship/ShippingMethodsScreen.dart';
import 'package:shipping_aquatic/screens/shipping/ShoppingPaymentScreen.dart';

class ShippingView extends StatefulWidget {
  @override
  _ShippingViewState createState() => _ShippingViewState();
}

class _ShippingViewState extends State<ShippingView>
    with SingleTickerProviderStateMixin {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;

  Color primaryColor = Color(0xff0bb783);

  int _currentIndex = 0;

  TabController _tabController;
  _handleTabSelection() {
    // print("IN FIRST");
    // _tabController.index = 1;
    setState(() {
      _currentIndex = _tabController.index;
    });
  }

  // _handleSteps() {
  //   setState(() {
  //     _tabController.index = 1;
  //   });
  // }

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    _tabController.animation.addListener(() {
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
    });
    super.initState();
  }

  ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           colors: <Color>[Color(0xff24b04b), Color(0xff0bb783)]),),
        // ),
        title: Text("Ship"),
        centerTitle: true,
      ),
      bottomNavigationBar: bottomNavigationBar(),
      body: TabBarView(
        // ignore: todo
            // TODO 
            // setterFunction: _handleSteps,
        // physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: <Widget>[
          ShippingDetails(
            // ignore: todo
            // TODO 
            // setterFunction: _handleSteps,
          ),
          ShippingMethodsScreen(),
          OrderSummaryScreen(),
          ShoppingPaymentScreen(),
          PrintShippingScreen(),
        ],
      ),
    );
  }

  BottomAppBar bottomNavigationBar() {
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
          onTap: (index) {
            // ignore: todo
            // TODO 
            // setterFunction: _handleSteps,
            // setState(() {
            //   _tabController.index = 0;
            // });
          },
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
                          MdiIcons.formSelect,
                          color: primaryColor,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: new BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          height: 5,
                          width: 5,
                        )
                      ],
                    )
                  : Icon(
                      MdiIcons.formSelect,
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
                          MdiIcons.carLiftedPickup,
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
                      MdiIcons.carBack,
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
                          MdiIcons.formDropdown,
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
                      MdiIcons.formDropdown,
                      color: themeData.colorScheme.onBackground,
                    ),
            ),
            Container(
              child: (_currentIndex == 3)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          LineAwesomeIcons.coins,
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
                      LineAwesomeIcons.coins,
                      color: themeData.colorScheme.onBackground,
                    ),
            ),
            Container(
              child: (_currentIndex == 4)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MdiIcons.printer,
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
                      MdiIcons.printer,
                      color: themeData.colorScheme.onBackground,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:shipping_aquatic/screens/shipping/ShoppingRatingScreen.dart';
import 'package:shipping_aquatic/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../AppTheme.dart';

class ShoppingPaymentScreen extends StatefulWidget {
  @override
  _ShoppingPaymentScreenState createState() => _ShoppingPaymentScreenState();
}

class _ShoppingPaymentScreenState extends State<ShoppingPaymentScreen> {
  final int _numPages = 3;
  int _currentPage = 0;
  ThemeData themeData;
  Color primaryColor = Color(0xff0bb783);
// ignore:unused_field
  int _selectedMethod = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(
        i == _currentPage ? _indicator(true) : _indicator(false),
      );
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInToLinear,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: 8,
      decoration: BoxDecoration(
        color: isActive
            ? primaryColor
            : themeData.colorScheme.onBackground.withAlpha(120),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
    );
  }

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(MdiIcons.chevronLeft),
        ),
        title: Text(
          "Payment",
          style: AppTheme.getTextStyle(themeData.textTheme.headline6,
              fontWeight: 600),
        ),
      ),
      backgroundColor: themeData.backgroundColor,
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Container(
            height: 240,
            decoration: BoxDecoration(
              color: themeData.backgroundColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(MySize.size16),
                topRight: Radius.circular(MySize.size16),
              ),
            ),
            child: PageView(
              pageSnapping: true,
              physics: ClampingScrollPhysics(),
              controller: PageController(
                  initialPage: 0, viewportFraction: 0.85, keepPage: false),
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: MySize.size8,
                      bottom: MySize.size24,
                      right: MySize.size8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: themeData.colorScheme.secondary,
                      borderRadius: BorderRadius.all(
                        Radius.circular(MySize.size16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: themeData.colorScheme.secondary.withAlpha(30),
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: MySize.size24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Visa",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.headline5,
                              fontWeight: 800,
                              color: themeData.colorScheme.onSecondary),
                        ),
                        Text(
                          "3481 4866 4789 9954",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.subtitle1,
                              fontWeight: 600,
                              color: themeData.colorScheme.onSecondary),
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Card holder",
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText2,
                                      color: themeData.colorScheme.onSecondary,
                                      fontWeight: 500),
                                ),
                                Text(
                                  "Natalia dyer",
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText1,
                                      color: themeData.colorScheme.onSecondary,
                                      fontWeight: 600),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: MySize.size24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Expire date",
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText2,
                                        color:
                                            themeData.colorScheme.onSecondary,
                                        fontWeight: 500),
                                  ),
                                  Text(
                                    "08/26",
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color:
                                            themeData.colorScheme.onSecondary,
                                        fontWeight: 600),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MySize.size8,
                      bottom: MySize.size24,
                      left: MySize.size8,
                      right: MySize.size8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: themeData.colorScheme.secondaryVariant,
                      borderRadius: BorderRadius.all(
                        Radius.circular(MySize.size16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: themeData.colorScheme.secondaryVariant
                              .withAlpha(30),
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: MySize.size24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Mastercard",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.headline5,
                              fontWeight: 800,
                              color: themeData.colorScheme.onSecondary),
                        ),
                        Text(
                          "4879 5846 5478 2363",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.subtitle1,
                              fontWeight: 600,
                              color: themeData.colorScheme.onSecondary),
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Card holder",
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText2,
                                      color: themeData.colorScheme.onSecondary,
                                      fontWeight: 500),
                                ),
                                Text(
                                  "Liana Fitzgeraldl",
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText1,
                                      color: themeData.colorScheme.onSecondary,
                                      fontWeight: 600),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: MySize.size24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Expire date",
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText2,
                                        color:
                                            themeData.colorScheme.onSecondary,
                                        fontWeight: 500),
                                  ),
                                  Text(
                                    "04/25",
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color:
                                            themeData.colorScheme.onSecondary,
                                        fontWeight: 600),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MySize.size8,
                      bottom: MySize.size24,
                      left: MySize.size8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: themeData.colorScheme.secondary,
                      borderRadius: BorderRadius.all(
                        Radius.circular(MySize.size16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: themeData.colorScheme.secondary.withAlpha(30),
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: MySize.size24),
                    child: Center(
                      child: Text(
                        "ADD CARD",
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle1,
                            fontWeight: 700,
                            letterSpacing: 0.5,
                            color: themeData.colorScheme.onPrimary),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(MySize.size16),
                  child: Text(
                    "METHODS",
                    style: AppTheme.getTextStyle(
                      themeData.textTheme.subtitle2,
                      fontWeight: 600,
                      color: themeData.colorScheme.onBackground.withAlpha(
                        220,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: themeData.dividerColor,
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MySize.size16,
                      right: MySize.size16,
                      top: MySize.size8,
                      bottom: MySize.size8),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('./assets/brand/paypal.png'),
                        width: 20,
                        height: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: MySize.size16),
                          child: Text(
                            "Paypal",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.subtitle1,
                                fontWeight: 600),
                          ),
                        ),
                      ),
                      Icon(
                        MdiIcons.chevronRight,
                        color: themeData.colorScheme.onBackground,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: themeData.dividerColor,
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MySize.size16,
                      right: MySize.size16,
                      top: MySize.size8,
                      bottom: MySize.size8),
                  child: Row(
                    children: <Widget>[
                      Image(
                          image: AssetImage('./assets/brand/paypal.png'),
                          width: 20,
                          height: 20),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: MySize.size16),
                          child: Text(
                            "Pay Later",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.subtitle1,
                                fontWeight: 600),
                          ),
                        ),
                      ),
                      Icon(
                        MdiIcons.chevronRight,
                        color: themeData.colorScheme.onBackground,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: themeData.dividerColor,
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MySize.size16,
                      right: MySize.size16,
                      top: MySize.size8,
                      bottom: MySize.size8),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.credit_card, color: Colors.black),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: MySize.size16),
                          child: Text(
                            "Debit or Credit Card",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.subtitle1,
                                fontWeight: 600),
                          ),
                        ),
                      ),
                      Icon(
                        MdiIcons.chevronRight,
                        color: themeData.colorScheme.onBackground,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: themeData.dividerColor,
                  thickness: 0.3,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MySize.size32),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(MySize.size8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withAlpha(28),
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: MySize.size12, bottom: MySize.size12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size8),
                    ),
                    backgroundColor: primaryColor,
                    primary: themeData.colorScheme.onPrimary.withAlpha(100),
                    // highlightColor: Colors.blue,`
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShoppingRatingScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "PROCEED",
                    style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                        fontWeight: 600,
                        color: themeData.colorScheme.onPrimary,
                        letterSpacing: 0.3),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final Color primaryColor = Color(0xff0bb783);
  final IconData iconData;
  final String text;
  final bool isSelected;

  OptionWidget(
      {Key key,
      @required this.iconData,
      @required this.text,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? primaryColor : themeData.cardTheme.color,
        borderRadius: BorderRadius.all(
          Radius.circular(MySize.size8),
        ),
        boxShadow: [
          BoxShadow(
            color: themeData.cardTheme.shadowColor.withAlpha(24),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            color: isSelected
                ? themeData.colorScheme.onPrimary
                : themeData.colorScheme.onBackground,
            size: 30,
          ),
          Container(
            margin: EdgeInsets.only(top: MySize.size8),
            child: Text(
              text,
              style: AppTheme.getTextStyle(
                themeData.textTheme.caption,
                fontWeight: 600,
                color: isSelected
                    ? themeData.colorScheme.onPrimary
                    : themeData.colorScheme.onBackground,
              ),
            ),
          )
        ],
      ),
    );
  }
}

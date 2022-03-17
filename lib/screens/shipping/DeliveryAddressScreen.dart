import 'package:shipping_aquatic/screens/shipping/ShoppingPaymentScreen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shipping_aquatic/utils/SizeConfig.dart';

import '../../AppTheme.dart';

class DeliveryAddressScreen extends StatefulWidget {
  @override
  _DeliveryAddressScreenState createState() => _DeliveryAddressScreenState();
}

class _DeliveryAddressScreenState extends State<DeliveryAddressScreen> {
  ThemeData themeData;

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    Color primaryColor = Color(0xff0bb783);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(MdiIcons.chevronLeft),
        ),
        title: Text(
          "Delivery Address",
          style: AppTheme.getTextStyle(
            themeData.textTheme.headline6,
            fontWeight: 600,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(MySize.size24),
            decoration: BoxDecoration(
              color: themeData.cardTheme.color,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  MySize.size16,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: themeData.cardTheme.shadowColor.withAlpha(28),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      fontWeight: 500, letterSpacing: 0.2),
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                      themeData.textTheme.subtitle2,
                      fontWeight: 500,
                      letterSpacing: 0,
                      color: themeData.colorScheme.onBackground.withAlpha(180),
                    ),
                    hintText: "Organization",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                ),
                Divider(
                  height: 0,
                ),
                TextFormField(
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      fontWeight: 500, letterSpacing: 0.2),
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                      themeData.textTheme.subtitle2,
                      fontWeight: 500,
                      letterSpacing: 0,
                      color: themeData.colorScheme.onBackground.withAlpha(180),
                    ),
                    hintText: "Last Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                ),
                Divider(
                  height: 0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle2,
                            fontWeight: 500,
                            letterSpacing: 0.2),
                        decoration: InputDecoration(
                          hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle2,
                            fontWeight: 500,
                            letterSpacing: 0,
                            color: themeData.colorScheme.onBackground
                                .withAlpha(180),
                          ),
                          hintText: "City",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              borderSide: BorderSide.none),
                        ),
                        textCapitalization: TextCapitalization.sentences,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: MySize.size8),
                        child: TextFormField(
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.subtitle2,
                              fontWeight: 500,
                              letterSpacing: 0.2),
                          decoration: InputDecoration(
                            hintStyle: AppTheme.getTextStyle(
                              themeData.textTheme.subtitle2,
                              fontWeight: 500,
                              letterSpacing: 0,
                              color: themeData.colorScheme.onBackground
                                  .withAlpha(180),
                            ),
                            hintText: "State",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                borderSide: BorderSide.none),
                          ),
                          textCapitalization: TextCapitalization.sentences,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MySize.size24),
            decoration: BoxDecoration(
              color: themeData.cardTheme.color,
              borderRadius: BorderRadius.all(
                Radius.circular(MySize.size16),
              ),
              boxShadow: [
                BoxShadow(
                  color: themeData.cardTheme.shadowColor.withAlpha(28),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      fontWeight: 500, letterSpacing: 0.2),
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                      themeData.textTheme.subtitle2,
                      fontWeight: 500,
                      letterSpacing: 0,
                      color: themeData.colorScheme.onBackground.withAlpha(180),
                    ),
                    hintText: "Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                Divider(
                  height: 0,
                ),
                TextFormField(
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      fontWeight: 500, letterSpacing: 0.2),
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                      themeData.textTheme.subtitle2,
                      fontWeight: 500,
                      letterSpacing: 0,
                      color: themeData.colorScheme.onBackground.withAlpha(180),
                    ),
                    hintText: "Apartment,Suite,Building,Unit,Floor etc",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                  keyboardType: TextInputType.number,
                ),
                Divider(
                  height: 0,
                ),
                TextFormField(
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      fontWeight: 500, letterSpacing: 0.2),
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                      themeData.textTheme.subtitle2,
                      fontWeight: 500,
                      letterSpacing: 0,
                      color: themeData.colorScheme.onBackground.withAlpha(180),
                    ),
                    hintText: "Zip Code",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                ),
                Divider(
                  height: 0,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Get Weather"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        primary: primaryColor,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 0,
                ),
                TextFormField(
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      fontWeight: 500, letterSpacing: 0.2),
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                      themeData.textTheme.subtitle2,
                      fontWeight: 500,
                      letterSpacing: 0,
                      color: themeData.colorScheme.onBackground.withAlpha(180),
                    ),
                    hintText: "Phone",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                ),
                Divider(
                  height: 0,
                ),
                TextFormField(
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      fontWeight: 500, letterSpacing: 0.2),
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                      themeData.textTheme.subtitle2,
                      fontWeight: 500,
                      letterSpacing: 0,
                      color: themeData.colorScheme.onBackground.withAlpha(180),
                    ),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MySize.size16, bottom: MySize.size8),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(MySize.size8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: themeData.colorScheme.primary.withAlpha(28),
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: MySize.size12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size10),
                    ),
                    backgroundColor: primaryColor,
                    primary: themeData.colorScheme.primary,
                    // onprimary: Colors.white.withAlpha(100),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShoppingPaymentScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "NEXT",
                    style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                        fontWeight: 600,
                        color: themeData.colorScheme.onPrimary,
                        letterSpacing: 0.5),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

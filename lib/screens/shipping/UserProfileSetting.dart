import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:shipping_aquatic/screens/Profile/BoxPreferences.dart';
import 'package:shipping_aquatic/screens/Profile/ChangePassword.dart';
import 'package:shipping_aquatic/screens/Profile/PersonalInformation.dart';
import 'package:shipping_aquatic/screens/Profile/ProductOrderHistory.dart';
import 'package:shipping_aquatic/screens/Profile/ServiceUpcharge.dart';
import 'package:shipping_aquatic/screens/Profile/ServiceUpchargeHistory.dart';
import 'package:shipping_aquatic/screens/Profile/UpsOrderHistory.dart';

import 'package:shipping_aquatic/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../AppTheme.dart';

class UserProfileSetting extends StatefulWidget {
  @override
  _UserProfileSettingState createState() => _UserProfileSettingState();
}

class _UserProfileSettingState extends State<UserProfileSetting> {
  ThemeData themeData;

  Widget build(BuildContext context) {
    themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(MdiIcons.chevronLeft),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text("User Settings"),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.only(left: MySize.size24, right: MySize.size24),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: MySize.size40),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return PersonalInformation();
                          },
                        ),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Icon(
                            LineAwesomeIcons.user,
                            color: themeData.colorScheme.onBackground,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: MySize.size16),
                            child: Text(
                              "Personal Information",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText1,
                                  fontWeight: 600),
                            ),
                          ),
                        ),
                        Container(
                          child: Icon(MdiIcons.chevronRight,
                              size: MySize.size22,
                              color: themeData.colorScheme.onBackground),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: MySize.size30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.size8, horizontal: 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ChangePassword();
                            },
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Icon(
                              LineAwesomeIcons.user_shield,
                              size: MySize.size22,
                              color: themeData.colorScheme.onBackground,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: MySize.size16),
                              child: Text(
                                "Change Password",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600),
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(MdiIcons.chevronRight,
                                size: 22,
                                color: themeData.colorScheme.onBackground),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: MySize.size30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.size8, horizontal: 0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BoxPreferences();
                            },
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Icon(LineAwesomeIcons.dropbox,
                                size: MySize.size22,
                                color: themeData.colorScheme.onBackground),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: MySize.size16),
                              child: Text(
                                "Box Preferences",
                                style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText1,
                                  fontWeight: 600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(MdiIcons.chevronRight,
                                size: MySize.size22,
                                color: themeData.colorScheme.onBackground),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: MySize.size30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.size8, horizontal: 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ServiceUpcharge();
                            },
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Icon(LineAwesomeIcons.coins,
                                size: MySize.size22,
                                color: themeData.colorScheme.onBackground),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: MySize.size16),
                              child: Text(
                                "Service Upcharge",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600),
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(MdiIcons.chevronRight,
                                size: 22,
                                color: themeData.colorScheme.onBackground),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: MySize.size12,
                    thickness: 0.2,
                    // color: Colors.transparent,
                  ),
                  Container(
                    // padding: EdgeInsets.symmetric(
                    //     vertical: MySize.size8, horizontal: 0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: Container(
                                color: Colors.grey[50],
                                child: ExpansionTile(
                                  collapsedBackgroundColor: Colors.transparent,
                                  leading: Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Icon(MdiIcons.history,
                                        size: MySize.size22,
                                        color:
                                            themeData.colorScheme.onBackground),
                                  ),
                                  title: Text(
                                    "History",
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        fontWeight: 600,
                                        fontSize: 16),
                                  ),
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return UpsOrderHistory();
                                            },
                                          ),
                                        );
                                      },
                                      child: ListTile(
                                        title: Text("UPS Order History"),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return ProductOrderHistory();
                                            },
                                          ),
                                        );
                                      },
                                      child: ListTile(
                                        title: Text("Product Order History"),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return ServiceUpchargeHistory();
                                            },
                                          ),
                                        );
                                      },
                                      child: ListTile(
                                        title: Text("Service Upcharge History"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

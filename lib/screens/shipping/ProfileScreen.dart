import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shipping_aquatic/screens/Profile/BoxPreferences.dart';
import 'package:shipping_aquatic/screens/Profile/ChangePassword.dart';
import 'package:shipping_aquatic/screens/Profile/PersonalInformation.dart';
import 'package:shipping_aquatic/screens/Profile/ProductOrderHistory.dart';
import 'package:shipping_aquatic/screens/Profile/ServiceUpcharge.dart';
import 'package:shipping_aquatic/screens/Profile/ServiceUpchargeHistory.dart';
import 'package:shipping_aquatic/screens/Profile/UpsOrderHistory.dart';
import 'package:shipping_aquatic/screens/shipping/LoginScreen.dart';
import 'package:shipping_aquatic/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../AppTheme.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ThemeData themeData;

  Widget build(BuildContext context) {
    themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(MySize.size24),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: MySize.size16),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) {
                  //     return UserProfileSetting();
                  //   }),
                  // );
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MySize.size64,
                      height: MySize.size64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("./assets/images/avatar-3.jpg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: MySize.size16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Salman Rafi",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.subtitle1,
                                fontWeight: 700,
                                letterSpacing: 0),
                          ),
                          Text(
                            "salmanrafi125@gmail.com",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.caption,
                                fontWeight: 600,
                                letterSpacing: 0.3),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          child: Icon(
                            MdiIcons.chevronRight,
                            color: themeData.colorScheme.onBackground,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: MySize.size40),
            //   child: Row(
            //     children: <Widget>[
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.all(MySize.size16),
            //           margin: EdgeInsets.only(right: MySize.size12),
            //           decoration: BoxDecoration(
            //             color: themeData.cardTheme.color,
            //             border: Border.all(
            //                 width: 0.5, color: themeData.colorScheme.surface),
            //             borderRadius:
            //                 BorderRadius.all(Radius.circular(MySize.size8),),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: themeData.cardTheme.shadowColor.withAlpha(18),
            //                 blurRadius: 3,
            //                 offset: Offset(0, 1),
            //               ),
            //             ],
            //           ),
            //           child: Column(
            //             children: <Widget>[
            //               Icon(
            //                 MdiIcons.mapMarkerOutline,
            //                 color: themeData.colorScheme.onBackground,
            //               ),
            //               Container(
            //                   margin: EdgeInsets.only(top: MySize.size8),
            //                   child: Text(
            //                     "Address",
            //                     style: AppTheme.getTextStyle(
            //                         themeData.textTheme.bodyText2,
            //                         fontWeight: 600),
            //                   ),)
            //             ],
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.all(MySize.size16),
            //           margin: EdgeInsets.only(
            //               left: MySize.size4, right: MySize.size4),
            //           decoration: BoxDecoration(
            //             color: themeData.cardTheme.color,
            //             border: Border.all(
            //                 width: 0.5, color: themeData.colorScheme.surface),
            //             borderRadius:
            //                 BorderRadius.all(Radius.circular(MySize.size8),),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: themeData.cardTheme.shadowColor.withAlpha(18),
            //                 blurRadius: 3,
            //                 offset: Offset(0, 1),
            //               ),
            //             ],
            //           ),
            //           child: Column(
            //             children: <Widget>[
            //               Icon(
            //                 MdiIcons.creditCardOutline,
            //                 color: themeData.colorScheme.onBackground,
            //               ),
            //               Container(
            //                   margin: EdgeInsets.only(top: MySize.size8),
            //                   child: Text(
            //                     "Payment",
            //                     style: AppTheme.getTextStyle(
            //                         themeData.textTheme.bodyText2,
            //                         fontWeight: 700),
            //                   ),)
            //             ],
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.all(MySize.size16),
            //           margin: EdgeInsets.only(left: MySize.size12),
            //           decoration: BoxDecoration(
            //             color: themeData.cardTheme.color,
            //             border: Border.all(
            //                 width: 0.5, color: themeData.colorScheme.surface),
            //             borderRadius:
            //                 BorderRadius.all(Radius.circular(MySize.size8),),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: themeData.cardTheme.shadowColor.withAlpha(18),
            //                 blurRadius: 3,
            //                 offset: Offset(0, 1),
            //               ),
            //             ],
            //           ),
            //           child: Column(
            //             children: <Widget>[
            //               Icon(
            //                 MdiIcons.contentPaste,
            //                 color: themeData.colorScheme.onBackground,
            //               ),
            //               Container(
            //                   margin: EdgeInsets.only(top: MySize.size8),
            //                   child: Text(
            //                     "History",
            //                     style: AppTheme.getTextStyle(
            //                         themeData.textTheme.bodyText2,
            //                         fontWeight: 600),
            //                   ),)
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                            child: Icon(
                              LineAwesomeIcons.coins,
                              size: MySize.size22,
                              color: themeData.colorScheme.onBackground,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: MySize.size16),
                              child: Text(
                                "Service Upcharge",
                                style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText1,
                                  fontWeight: 600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(
                              MdiIcons.chevronRight,
                              size: 22,
                              color: themeData.colorScheme.onBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: MySize.size30,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                dividerColor: Colors.transparent,
                              ),
                              child: Container(
                                color: Colors.grey[50],
                                child: ExpansionTile(
                                  collapsedBackgroundColor: Colors.transparent,
                                  leading: Container(
                                    // padding: const EdgeInsets.only(right: 20.0),
                                    child: Icon(
                                      MdiIcons.history,
                                      size: MySize.size22,
                                      color: themeData.colorScheme.onBackground,
                                    ),
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
                                        title: Text(
                                          "Service Upcharge History",
                                        ),
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
                  Divider(
                    height: MySize.size30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.size8, horizontal: 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                            (Route<dynamic> route) => false);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Icon(MdiIcons.logout,
                                size: MySize.size22,
                                color: themeData.colorScheme.onBackground),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                left: MySize.size16,
                              ),
                              child: Text(
                                "Logout",
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

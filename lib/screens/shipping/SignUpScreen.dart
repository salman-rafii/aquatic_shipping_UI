import 'package:shipping_aquatic/screens/shipping/HomeScreen.dart';
import 'package:shipping_aquatic/screens/shipping/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../AppTheme.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  ThemeData themeData;
  Color primaryColor = Color(0xff0bb783);
  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 48),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        child: Center(
                          child: Text(
                            "Create an Account",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.headline5,
                                fontWeight: 600),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 48, right: 48, top: 40),
                        child: Text(
                          "Enter your details to create new your account",
                          softWrap: true,
                          style: AppTheme.getTextStyle(
                            themeData.appBarTheme.textTheme.bodyText1,
                            fontWeight: 600,
                            height: 1.2,
                            color: themeData.colorScheme.onBackground
                                .withAlpha(200),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24, right: 24, top: 36),
                        child: Container(
                          decoration: new BoxDecoration(
                            color: themeData.cardTheme.color,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 8.0,
                                color: themeData.cardTheme.shadowColor
                                    .withAlpha(25),
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0.2),
                                decoration: InputDecoration(
                                  hintStyle: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0,
                                    color: themeData.colorScheme.onBackground
                                        .withAlpha(180),
                                  ),
                                  hintText: "First Name",
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(16),
                                ),
                                autofocus: false,
                                textCapitalization:
                                    TextCapitalization.sentences,
                              ),
                              Divider(
                                color: themeData.dividerColor,
                                height: 0.5,
                              ),
                              TextFormField(
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0.2),
                                decoration: InputDecoration(
                                  hintStyle: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0,
                                    color: themeData.colorScheme.onBackground
                                        .withAlpha(180),
                                  ),
                                  hintText: "Last Name",
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(16),
                                ),
                                autofocus: false,
                                textCapitalization:
                                    TextCapitalization.sentences,
                              ),
                              Divider(
                                color: themeData.dividerColor,
                                height: 0.5,
                              ),
                              TextFormField(
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0.2),
                                decoration: InputDecoration(
                                  hintStyle: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0,
                                    color: themeData.colorScheme.onBackground
                                        .withAlpha(180),
                                  ),
                                  hintText: "Email",
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(16),
                                ),
                                autofocus: false,
                                textCapitalization:
                                    TextCapitalization.sentences,
                              ),
                              Divider(
                                color: themeData.dividerColor,
                                height: 0.5,
                              ),
                              TextFormField(
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0.2),
                                decoration: InputDecoration(
                                  hintStyle: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0,
                                    color: themeData.colorScheme.onBackground
                                        .withAlpha(180),
                                  ),
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(16),
                                ),
                                autofocus: false,
                                textCapitalization:
                                    TextCapitalization.sentences,
                              ),
                              Divider(
                                color: themeData.dividerColor,
                                height: 0.5,
                              ),
                              TextFormField(
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0.2),
                                decoration: InputDecoration(
                                  hintStyle: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    fontWeight: 600,
                                    letterSpacing: 0,
                                    color: themeData.colorScheme.onBackground
                                        .withAlpha(180),
                                  ),
                                  hintText: "Confirm Password",
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(16),
                                ),
                                autofocus: false,
                                keyboardType: TextInputType.emailAddress,
                              ),
                              Divider(
                                color: themeData.dividerColor,
                                height: 0.5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24, right: 24, top: 36),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(48),
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              backgroundColor: primaryColor,
                              primary: Colors.blue,
                              // splashColor: Colors.white.withAlpha(100),
                              padding: EdgeInsets.only(top: 16, bottom: 16),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),);
                            },
                            child: Stack(
                              // overflow: Overflow.visible,
                              alignment: Alignment.center,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "REGISTER",
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText2,
                                        color: themeData.colorScheme.onPrimary,
                                        letterSpacing: 0.8,
                                        fontWeight: 700),
                                  ),
                                ),
                                Positioned(
                                  right: 16,
                                  child: ClipOval(
                                    child: Container(
                                      color: primaryColor,
                                      // button color
                                      child: SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          MdiIcons.arrowRight,
                                          color:
                                              themeData.colorScheme.onPrimary,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText2,
                                  ),
                                ),
                                Text(
                                  "Login",
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText2,
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

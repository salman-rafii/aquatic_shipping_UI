import 'dart:convert';

import 'package:shipping_aquatic/screens/shipping/HomeScreen.dart';
// import 'package:shipping_aquatic/screens/shipping/ResetPasswordScreen.dart';
import 'package:shipping_aquatic/screens/shipping/SignUpScreen.dart';
import 'package:http/http.dart' as http;
// import 'package:shipping_aquatic/utils/SizeConfig.dart';
import 'package:another_flushbar/flushbar.dart';

import 'package:uiblock/uiblock.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../AppTheme.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ThemeData themeData;
  Color primaryColor = Color(0xff0bb783);

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);

    final TextEditingController emailController = new TextEditingController();
    final TextEditingController passwordController =
        new TextEditingController();

    signIn(String email, pass) async {
      print("Logging in...");
      // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      // Map data = {'UserName': email, 'Password': pass};
      var jsonResponse;
      UIBlock.block(
        context,
        canDissmissOnBack: true,
        loadingTextWidget: Text(
          'Processing...',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[300],
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
      var response = await http.post(
        Uri.https("api.aquaticxpressshipping.com", "/api/auth/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          <String, dynamic>{"UserName": email, "Password": pass},
        ),
      );
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        UIBlock.unblock(context);

        jsonResponse = json.decode(response.body);
        if (jsonResponse != null) {
          // setState(() {});

          // sharedPreferences.setString("name", jsonResponse['name']);
          // sharedPreferences.setString("token", jsonResponse['enToken']);
          // sharedPreferences.setString("role", jsonResponse['role']);

          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen(),
              ),
              (Route<dynamic> route) => false);
        }
      } else if (emailController.text == "" && passwordController.text == "") {
        UIBlock.unblock(context);

        Flushbar(
          title: "Message",
          backgroundColor: Colors.red,
          message: "Please enter Username and password!",
          duration: Duration(seconds: 3),
        )..show(context);
      } else {
        UIBlock.unblock(context);

        Flushbar(
          title: "Message",
          backgroundColor: Colors.red,
          message: "Please enter correct values!",
          duration: Duration(seconds: 3),
        )..show(context);
      }
    }

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
        // actions: <Widget>[
        //   Container(
        //     // padding: EdgeInsets.only(right: 15),
        //     child: IconButton(
        //       icon: const Icon(
        //         MdiIcons.login,
        //         size: 30,
        //       ),
        //       tooltip: 'Login',
        //       onPressed: () async {
        //         // SharedPreferences prefs =
        //         //     await SharedPreferences.getInstance();
        //         // prefs.remove("token");
        //         Navigator.of(context).pushAndRemoveUntil(
        //             MaterialPageRoute(builder: (context) => ShoppingLoginScreen(),),
        //             (Route<dynamic> route) => false);
        //       },
        //     ),
        //   ),
        // ],
      ),
      // appBar: AppBar(
      //       backgroundColor: Colors.white,
      //       iconTheme: IconThemeData(color: Colors.black),
      //       elevation: 2,
      //       // flexibleSpace: Container(
      //       //   decoration: BoxDecoration(
      //       //       gradient: LinearGradient(
      //       //           begin: Alignment.topLeft,
      //       //           end: Alignment.bottomRight,
      //       //           colors: <Color>[Color(0xff24b04b), Color(0xff0bb783)]),),
      //       // ),
      //       title: Container(
      //         height: 50,
      //         child: Image.asset('assets/images/Aquatic.png'),
      //       ),
      //       centerTitle: true,

      //     ),
      body: Container(
        // padding: EdgeInsets.only(top:20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                // mainAxisSize: MainAxisSize.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.headline5,
                            fontWeight: 700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 48, right: 48, top: 40),
                    child: Text(
                      "Enter your login credentials to access your account",
                      softWrap: true,
                      style: AppTheme.getTextStyle(
                        themeData.textTheme.bodyText1,
                        fontWeight: 500,
                        height: 1.2,
                        color:
                            themeData.colorScheme.onBackground.withAlpha(200),
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
                            color:
                                themeData.cardTheme.shadowColor.withAlpha(25),
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
                                fontWeight: 500,
                                letterSpacing: 0,
                                color: themeData.colorScheme.onBackground
                                    .withAlpha(180),
                              ),
                              hintText: "Username",
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.all(20),
                            ),
                            autofocus: false,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                          ),
                          Divider(
                            color: themeData.dividerColor,
                            height: 0.5,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: TextFormField(
                                  controller: passwordController,
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText1,
                                      fontWeight: 600,
                                      letterSpacing: 0.2),
                                  decoration: InputDecoration(
                                    hintStyle: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText1,
                                      fontWeight: 500,
                                      letterSpacing: 0,
                                      color: themeData.colorScheme.onBackground
                                          .withAlpha(180),
                                    ),
                                    hintText: "Password",
                                    border: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(20),
                                    // suffixIcon:
                                  ),
                                  autofocus: false,
                                  // textInputAction: TextInputAction.search,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: true,
                                ),
                              ),
                              // OutlinedButton(
                              //   style: OutlinedButton.styleFrom(
                              //     side: BorderSide.none,
                              //     primary: Colors.transparent,
                              //   ),
                              //   onPressed: () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) =>
                              //             ResetPasswordScreen(),
                              //       ),
                              //     );
                              //   },

                              //   child: Text(
                              //     "FORGOT",
                              //     style: AppTheme.getTextStyle(
                              //         themeData.textTheme.bodyText2,
                              //         letterSpacing: 0.5,
                              //         color: themeData.colorScheme.onBackground
                              //             .withAlpha(140),
                              //         fontWeight: 700),
                              //   ),
                              // ),
                            ],
                          )
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
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          backgroundColor: primaryColor,
                          // primary: themeData.colorScheme.primary,
                          padding: EdgeInsets.only(top: 16, bottom: 16),
                        ),
                        onPressed: () {
                          // signIn(emailController.text, passwordController.text);
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (BuildContext context) => HomeScreen(),
                              ),
                              (Route<dynamic> route) => false);
                        },
                        child: Stack(
                          // overflow: Overflow.visible,
                          alignment: Alignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "SIGN IN",
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
                                      color: themeData.colorScheme.onPrimary,
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
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account yet?",
                              style: AppTheme.getTextStyle(
                                themeData.textTheme.bodyText2,
                              ),
                            ),
                            Text(
                              "Sign Up",
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
    );
  }
}

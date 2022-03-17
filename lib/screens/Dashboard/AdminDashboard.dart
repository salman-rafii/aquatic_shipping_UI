// import 'dart:convert';

// import 'package:aquatic_flutter/screens/Dashboard/Orders.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shipping_aquatic/screens/Dashboard/AdminDashboardBody.dart';

// import 'package:aquatic_flutter/screens/LoginPage.dart';

// import 'package:shared_preferences/shared_preferences.dart';

class AdminDashboard extends StatefulWidget {
  final name;
  final role;

  const AdminDashboard({Key key, this.name, this.role}) : super(key: key);
  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: ProfileScreen(
      //     name: widget.name,
      //     role: widget.role,
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(MdiIcons.chevronLeft),
        ),
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           colors: <Color>[Color(0xff24b04b), Color(0xff0bb783)]),),
        // ),
        title: Center(
          child: Container(
            height: 50,
            child: Image.asset('assets/images/Aquatic.png'),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            // padding: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(
                Icons.login,
                size: 30,
              ),
              tooltip: 'Logout',
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove("token");

                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (context) => ShipingLoginPage(),),
                //     (Route<dynamic> route) => false);
              },
            ),
          ),
        ],
      ),
      body: AdminDashboardBody(),
    );
  }

  // Widget dashboardButton(String text, svgUrl, titleColor, svgColor, route) {
  //   return Column(
  //     children: [
  //       InkWell(
  //         onTap: () {
  //           Navigator.push(context,MaterialPageRoute(builder: (context){
  //             return route;
  //           },),);
  //         },
  //         child: Container(
  //           // color: Colors.grey[100],
  //           margin: EdgeInsets.all(5.0),
  //           width: MediaQuery.of(context).size.width * 0.4,
  //           height: 200,
  //           child: FittedBox(
  //             child: SvgPicture.asset(
  //               svgUrl,
  //               color: svgColor,
  //             ),
  //           ),
  //         ),
  //       ),
  //       SizedBox(
  //         height: 5,
  //       ),
  //       Text(
  //         text,
  //         style: TextStyle(
  //           // color: Color(0xFFf64e60),
  //           // color: Colors.green,
  //           color: titleColor,

  //           fontWeight: FontWeight.w900,
  //         ),
  //       )
  //     ],
  //   );
  // }
}

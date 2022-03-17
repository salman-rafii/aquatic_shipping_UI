// import 'package:aquatic_flutter/screens/Drawer/Drawer3.dart';
// import 'package:aquatic_flutter/screens/Drawer/Drawer4.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActiveShipmentsView extends StatefulWidget {
  @override
  _ActiveShipmentsViewState createState() => _ActiveShipmentsViewState();
}

class _ActiveShipmentsViewState extends State<ActiveShipmentsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // drawer: Drawer(
        //   child: Drawer3(),
        //   // child: ProfileScreen(
        //   //   name: widget.name,
        //   //   role: widget.role,
        //   // ),
        // ),
        // endDrawer: Drawer(
        //   // child: UserProfileScreen(),
        //   child: Drawer4(),
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
          title: Text("Active Shipments"),
          centerTitle: true,
          actions: <Widget>[
            // Builder(
            //   builder: (context) {
            //     return IconButton(
            //       icon: Icon(Icons.person),
            //       onPressed: () {
            //         Scaffold.of(context).openEndDrawer();
            //       },
            //     );
            //   },
            // ),
         
          ],
        ),
        body: SingleChildScrollView(
                    child: Container(
                      color: Colors.grey[100],
                      padding: const EdgeInsets.only(bottom: 16, top: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(
                              "Tracking Number",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Order Date",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Receiver Name",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
        );
  }
}

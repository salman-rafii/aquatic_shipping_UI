import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ServiceUpcharge extends StatefulWidget {
  const ServiceUpcharge({
    Key key,
  }) : super(key: key);

  @override
  _ServiceUpchargeState createState() => _ServiceUpchargeState();
}

class _ServiceUpchargeState extends State<ServiceUpcharge> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Service Upcharge"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Card(
            elevation: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Service Upcharge",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                // ListTile(
                //   title: Text('Address Book',
                //       style: TextStyle(fontWeight: FontWeight.w800),),
                // ),
                Divider(),
                // Container(
                //   padding: EdgeInsets.all(20.0),
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       color: Color(0xffD7F9EF),),
                //   child: Text("Ship To",
                //       style: TextStyle(fontWeight: FontWeight.bold),
                //       textAlign: TextAlign.center,
                //       ),
                //   width: double.infinity,
                // ),
                Container(
                  color: Colors.grey[100],
                  padding: const EdgeInsets.only(bottom: 16, top: 16),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
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
                          "Tracking Number",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
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

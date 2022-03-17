import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ShipmentsCardView extends StatefulWidget {
  const ShipmentsCardView({
    Key key,
  }) : super(key: key);

  @override
  _ShipmentsCardViewState createState() => _ShipmentsCardViewState();
}

class _ShipmentsCardViewState extends State<ShipmentsCardView> {
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

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
        title: Text(
          "Shipments",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Card(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(
                'Shipments',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            Divider(),
            // SizedBox(
            //   height: 10,
            // ),
            Row(
              children: [
                spendingsCardView(context, "Today", "0", 10.0),
                spendingsCardView(context, "Weekly", "0", 10.0),
              ],
            ),
            Row(
              children: [
                spendingsCardView(context, "Monthly", "0", 10.0),
                spendingsCardView(context, "Yearly", "0", 10.0),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(1.0),
                                child: Text(
                                  "Sales By Month",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(1.0),
                                child: Text(
                                  "421.3M",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(1.0),
                                child: Text(
                                  "+12.9% of target",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(1.0),
                                child: new Sparkline(
                                  data: data,
                                  lineColor: Color(0xffff6101),
                                  pointsMode: PointsMode.all,
                                  pointSize: 8.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget spendingsCardView(
      BuildContext context, textLabel, price, containerPadding) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.all(2),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 6,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(containerPadding),
                margin: EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.16,
                // width: MediaQuery.of(context).size.width * 0.3,

                // color: Colors.orange,
                // margin: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Icon(
                      MdiIcons.currencyUsd,
                      color: Colors.black,
                      size: 26,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textLabel,
                      style: TextStyle(
                          color: Color(0xff0bb783),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      price,
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
              //   child: Text(
              //     textLabel,
              //     style: TextStyle(
              //       fontSize: 17,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

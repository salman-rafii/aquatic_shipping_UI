import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdminDashboardButtons extends StatefulWidget {
  @override
  _AdminDashboardButtonsState createState() => _AdminDashboardButtonsState();
}

class _AdminDashboardButtonsState extends State<AdminDashboardButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: [
          Expanded(
            flex: 2,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 6,
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.12,
                      // width: MediaQuery.of(context).size.width * 0.3,

                      // color: Colors.orange,
                      // margin: EdgeInsets.all(25.0),
                      child: SvgPicture.asset(
                        "assets/DashboardIcons/orders.svg",
                        // color: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0, left: 8.0, right: 8.0),
                      child: Text(
                        "Orders",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 6,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),

                    margin: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height * 0.12,

                    // width: MediaQuery.of(context).size.width * 0.3,

                    // color: Colors.orange,
                    // margin: EdgeInsets.all(25.0),
                    child: SvgPicture.asset(
                      "assets/DashboardIcons/progress_report.svg",
                      // color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 8.0, left: 8.0, right: 8.0),
                    child: Text(
                      "Progress Report",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 6,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),

                  margin: EdgeInsets.all(5),
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 0.46,
                  // width: MediaQuery.of(context).size.width * 0.3,

                  // color: Colors.orange,
                  // margin: EdgeInsets.all(25.0),
                  child: SvgPicture.asset(
                    "assets/DashboardIcons/paid_to_ups.svg",
                    // color: Colors.orange,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                  child: Text(
                    "Paid to UPS/Profit",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SpendingsCardView extends StatelessWidget {
  const SpendingsCardView({
    Key key,
  }) : super(key: key);

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
          "Spendings",
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
              title: Text('Spendings',
                  style: TextStyle(fontWeight: FontWeight.w800),),
            ),
            Divider(),
            // SizedBox(
            //   height: 10,
            // ),
            Row(
              children: [
                spendingsCardView(context, "Today", "20.0", 10.0),
                spendingsCardView(context, "Weekly", "30.0", 10.0),
                spendingsCardView(context, "Monthly", "40.0", 7.5),
                spendingsCardView(context, "Yearly", "50.0", 10.0),
              ],
            ),
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
          elevation: 5,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(containerPadding),
                margin: EdgeInsets.all(7),
                height: MediaQuery.of(context).size.height * 0.15,
                // width: MediaQuery.of(context).size.width * 0.3,

                // color: Colors.orange,
                // margin: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Icon(
                      MdiIcons.currencyUsd,
                      size: 26,
                      color: Colors.black,
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

  // TableRow spendingsRow(textLabel, price) {
  //   return TableRow(
  //     children: [
  //       Card(
  //         elevation: 6,
  //         child: Container(
  //           margin: EdgeInsets.all(10),
  //           padding: const EdgeInsets.all(10.0),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Container(
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(10),
  //                   color: Colors.green[50],
  //                 ),
  //                 height: 60,
  //                 width: 60,
  //                 child: Icon(
  //                   LineAwesomeIcons.hand_holding_us_dollar,
  //                   size: 50,
  //                 ),
  //               ),
  //               Text(
  //                 textLabel,
  //                 style: TextStyle(
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.bold,
  //                     color: Color(0xff0bb783),),
  //               ),
  //               Text(
  //                 price,
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

}

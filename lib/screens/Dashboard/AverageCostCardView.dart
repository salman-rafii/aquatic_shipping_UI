import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AverageCostCardView extends StatelessWidget {
  const AverageCostCardView({
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
          "Average Cost",
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
              title: Text('Average Cost',
                  style: TextStyle(fontWeight: FontWeight.w800),),
            ),
            Divider(),
            // SizedBox(
            //   height: 10,
            // ),
            Table(
              columnWidths: {2: FlexColumnWidth(2)},
              children: [
                averageCostRow("Today", "\$0.00"),
                averageCostRow("Weekly", "\$0.00"),
                averageCostRow("Monthly", "\$0.00"),
                averageCostRow("Yearly", "\$0.00"),
              ],
            ),
          ],
        ),
      ),
    );
  }
TableRow averageCostRow(textLabel, price) {
    return TableRow(
      children: [
        Card(
          elevation: 6,
          child: Container(
            margin: EdgeInsets.all(10),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[50],
                  ),
                  height: 60,
                  width: 60,
                  child: Icon(
                    LineAwesomeIcons.hand_holding_us_dollar,
                    size: 50,
                  ),
                ),
                Text(
                  textLabel,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0bb783),),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }


}

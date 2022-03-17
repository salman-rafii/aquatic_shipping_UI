import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UpsOrderHistory extends StatefulWidget {
  @override
  _UpsOrderHistoryState createState() => _UpsOrderHistoryState();
}

class _UpsOrderHistoryState extends State<UpsOrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(MdiIcons.chevronLeft),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text("UPS Order History"),
        centerTitle: true,
        actions: <Widget>[],
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
                flex: 3,
                child: Text(
                  "Order Date",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "Receiver Name",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "Status",
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

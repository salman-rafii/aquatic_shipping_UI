import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OrderSummaryScreen extends StatefulWidget {
  const OrderSummaryScreen({
    Key key,
  }) : super(key: key);

  @override
  _OrderSummaryScreenState createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
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
          "Order Summary",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 0,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
             
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  orderSummaryCard(context, "Shipper Detail","Last Name","2805 W AGUA FRIA FWY", "PHOENIX,AZ,85027", "0", 10.0),
                ],
              ),
              Row(
                children: [
                  orderSummaryCard(context, "Receiver Detail","Things","2805 W AGUA FRIA FWY", "PHOENIX,AZ,85027", "0", 10.0),
                ],
              ),
              Row(
                children: [
                  orderSummaryCard(context, "Delivery Service Type","UPS Ground","03/16/2021 TUE EOD", "", "", 10.0),
                ],
              ),
              Row(
                children: [
                  orderSummaryCard(context, "Shipping Details","Box Type:Custom","Dimensions: 10x10x10", "WEIGHT:10 LBS", "Insurance Charges: \$0", 10.0),
                ],
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }

  Widget orderSummaryCard(
      BuildContext context, textLabel,textLabel2,textLabel3,textLabel4, price, containerPadding) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(12),
        child: Card(
          color: Colors.grey[50],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
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
                  
                    Text(
                      textLabel,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10,),
                     Text(
                      textLabel2,
                      style: TextStyle(
                          fontSize: 14.0,
                          ),
                    ),
                     Text(
                      textLabel3,
                      style: TextStyle(
                          fontSize: 14.0,
                         ),
                    ),
                     Text(
                      textLabel4,
                      style: TextStyle(
                          fontSize: 14.0,
                         ),
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

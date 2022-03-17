import 'package:flutter/material.dart';

class PrintShippingScreen extends StatefulWidget {
  @override
  _PrintShippingScreenState createState() => _PrintShippingScreenState();
}

class _PrintShippingScreenState extends State<PrintShippingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Print Shipping"),
        ),
      ),
    );
  }
}

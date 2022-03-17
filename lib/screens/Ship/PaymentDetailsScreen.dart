import 'package:flutter/material.dart';

class PaymentDetailsScreen extends StatefulWidget {
  @override
  _PaymentDetailsScreenState createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Payment Details"),
        ),
      ),
    );
  }
}

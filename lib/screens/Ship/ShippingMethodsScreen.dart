import 'package:flutter/material.dart';

class ShippingMethodsScreen extends StatefulWidget {
  @override
  _ShippingMethodsScreenState createState() => _ShippingMethodsScreenState();
}

class _ShippingMethodsScreenState extends State<ShippingMethodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    "Shipping Method",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Est Delivery Time",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
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

import 'package:flutter/material.dart';
class ActiveShipmentCard extends StatelessWidget {
  const ActiveShipmentCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Active Shipments',
                style: TextStyle(fontWeight: FontWeight.w800),),
          ),
          Divider(),
        ],
      ),
    );
  }
}
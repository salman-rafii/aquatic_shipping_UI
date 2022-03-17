import 'package:flutter/material.dart';
import 'package:shipping_aquatic/screens/AddressBook/AddressBookBody.dart';

class AddressBookView extends StatefulWidget {
  @override
  _AddressBookViewState createState() => _AddressBookViewState();
}

class _AddressBookViewState extends State<AddressBookView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddressBookBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shipping_aquatic/AppTheme.dart';
import 'package:shipping_aquatic/screens/shipping/LoginScreen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aquatic Xpress Shipping',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getThemeFromThemeMode(1),
      home: LoginScreen(),
    );
  }
}

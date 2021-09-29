import 'package:flutter/material.dart';
import 'package:password_validated/pages/password_validation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Validation Password',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasswordValidationPage(),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasswordValidationPage(),
    );
  }
}

class PasswordValidationPage extends StatefulWidget {
  const PasswordValidationPage({Key? key}) : super(key: key);

  @override
  _PasswordValidationPageState createState() => _PasswordValidationPageState();
}

class _PasswordValidationPageState extends State<PasswordValidationPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

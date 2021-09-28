import 'package:flutter/material.dart';

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

class PasswordValidationPage extends StatefulWidget {
  const PasswordValidationPage({Key? key}) : super(key: key);

  @override
  _PasswordValidationPageState createState() => _PasswordValidationPageState();
}

class _PasswordValidationPageState extends State<PasswordValidationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Crie uma senha para você",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Texto Inicial.
            Text(
              "Defina sua senha",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Por favor, crie uma senha segura incluindo os seguintes critérios abaixo.",
              style: TextStyle(
                  fontSize: 16, height: 1.5, color: Colors.grey.shade600),
            ),
            SizedBox(height: 30),
            //Texto de entrada.
            TextField(
              decoration: InputDecoration(
                  //Icone de visualizar a senha.
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Senha",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

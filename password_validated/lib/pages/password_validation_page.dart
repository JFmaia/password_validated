import 'package:flutter/material.dart';

class PasswordValidationPage extends StatefulWidget {
  const PasswordValidationPage({Key? key}) : super(key: key);

  @override
  _PasswordValidationPageState createState() => _PasswordValidationPageState();
}

class _PasswordValidationPageState extends State<PasswordValidationPage> {
  //Variavel responsavel por quarda o valor que indica se a senha estar visivel ou não.
  bool _isVisible = false;
  //Variavel responsavel por quarda o valor que indica se a senha tem os caracteres suficientes.
  bool _isPasswordCharacters = false;
  //Variavel responsavel por quarda o valor que indica se a senha tem um numero.
  bool _isPasswordNumber = false;
  // Função responsavel por fazer a logica de verificação da senha.
  void _onPasswordChanged(String password) {
    setState(() {
      final numericRegex = RegExp(r'[0-9]');

      _isPasswordCharacters = false;
      if (password.length >= 8) _isPasswordCharacters = true;

      _isPasswordNumber = false;
      if (numericRegex.hasMatch(password)) _isPasswordNumber = true;
    });
  }

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
      body: SingleChildScrollView(
        child: Container(
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
                onChanged: (password) => _onPasswordChanged(password),
                obscureText: !_isVisible,
                decoration: InputDecoration(
                  //Icone de visualizar a senha.
                  suffixIcon: IconButton(
                    icon: _isVisible
                        ? Icon(
                            Icons.visibility,
                            color: Colors.black,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                    //Mudando o estado do icone de visualização da senha.
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                  ),
                  //Forma da caixa de texto e cor.
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //Forma da caixa de texto e cor, depois de selecionada.
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  //Texto que fica antes da digitação.
                  hintText: "Senha",
                  //Distancia dentro da caixa de entrada de texto.
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: _isPasswordCharacters
                          ? Colors.green
                          : Colors.transparent,
                      border: _isPasswordCharacters
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: _isPasswordCharacters
                          ? BorderRadius.circular(10)
                          : BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Contém pelo menos 8 caracteres"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color:
                          _isPasswordNumber ? Colors.green : Colors.transparent,
                      border: _isPasswordNumber
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: _isPasswordNumber
                          ? BorderRadius.circular(10)
                          : BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Contém pelo menos 1 número"),
                ],
              ),
              SizedBox(height: 50),
              MaterialButton(
                height: 40,
                minWidth: double.infinity,
                onPressed: () {},
                color: Colors.black,
                child: Text(
                  "CRIAR CONTA",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

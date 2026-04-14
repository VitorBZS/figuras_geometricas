import 'package:flutter/material.dart';

import '../menu/menu_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController nomeController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  void fazerLogin() {
    String nome = nomeController.text;
    String senha = senhaController.text;

    if (nome.isNotEmpty && senha.isNotEmpty && senha.length >= 8) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MenuView()),
      );
    }  
    else if(nome.isEmpty && senha.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Preencha todos os campos")),
      );
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Insira uma senha de 8 caracteres ou mais.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: "Nome",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: senhaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: fazerLogin,
              child: Text("Entrar"),
            )
          ],
        ),
      ),
    );
  }
}
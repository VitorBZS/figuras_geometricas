import 'package:flutter/material.dart';
import '../menu/menu_view.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final usuarioController = TextEditingController();
  final senhaController = TextEditingController();

  final String usuarioAdm = "admin";
  final String senhaAdm = "123";

  void entrar() {
    String user = usuarioController.text;
    String pass = senhaController.text;

    if (user == usuarioAdm && pass == senhaAdm) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => MenuView(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Erro"),
          content: Text("Usuário ou senha inválidos."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: usuarioController,
              decoration: InputDecoration(
                labelText: "Usuário",
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

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: entrar,
              child: Text("Entrar"),
            ),
          ],
        ),
      ),
    );
  }
}
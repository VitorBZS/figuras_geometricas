import 'dart:async';
import 'package:figuras_geometricas/views/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => LoginView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [

          // 🔹 Imagem principal (ícone splash)
          Center(
            child: SvgPicture.asset(
              "assets/Icon.svg",
              width: 180,
            ),
          ),

          // 🔹 Topo esquerdo
          Positioned(
            top: 40,
            left: 20,
            child: Image.asset(
              "assets/fatec-matao.jpg",
              width: 90,
            ),
          ),

          // 🔹 Topo direito
          Positioned(
            top: 40,
            right: 20,
            child: Image.asset(
              "assets/cst-dsm.png",
              width: 90,
            ),
          ),

          // 🔹 Embaixo centralizado
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                "assets/cps-55-anos.png",
                width: 140,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
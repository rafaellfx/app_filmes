import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash"),
      ),
      body: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backgroud.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}

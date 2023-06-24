import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwat/features/splash/presintetion/splash_view.dart';

void main() {
  runApp(const FruitsMartket());
}

class FruitsMartket extends StatelessWidget {
  const FruitsMartket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

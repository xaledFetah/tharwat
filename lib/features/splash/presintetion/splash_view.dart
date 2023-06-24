import 'package:flutter/material.dart';
import 'package:tharwat/core/constants.dart';
import 'package:tharwat/features/splash/presintetion/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashViewBody(),
    );
  }
}

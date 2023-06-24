import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwat/core/utlis/size_config.dart';
import 'package:tharwat/features/on%20Boarding/presentation/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    fadingAnimation =
        Tween<double>(begin: .3, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);

    gotoNextView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // spacer
          Spacer(),
          // text splash view
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              "Fruit Market",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 51,
                  fontFamily: 'Poppins'),
            ),
          ),
          // specer
          Spacer(),
          // image splash view
          Image.asset('assets/images/sp.png')
        ],
      ),
    );
  }

  void gotoNextView() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(() => OnBoardingView(), transition: Transition.fade);
    });
  }
}

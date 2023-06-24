import 'package:flutter/material.dart';
import 'package:tharwat/core/constants.dart';
import 'package:tharwat/core/utlis/size_config.dart';
import 'package:tharwat/core/widgets/custom_buttons.dart';
import 'package:tharwat/features/on%20Boarding/presentation/on_boarding_view.dart';
import 'package:tharwat/features/on%20Boarding/presentation/widgets/custom_indicator.dart';
import 'package:tharwat/features/on%20Boarding/presentation/widgets/custom_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // page view body
        CustomPageView(
          pageController: pageController,
        ),

        // indicator package
        Positioned(
            right: 0,
            left: 0,
            bottom: SizeConfig.defaultSize! * 16,
            child: CustomIndicator()),
        // Skip Text
        Positioned(
          top: SizeConfig.defaultSize! * 8,
          right: 32,
          child: Text(
            'Skip',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF898989)),
          ),
        ),

        // next button
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 8,
            child: CustomGeneralButton(
              text: 'Next',
            ))
      ],
    );
  }
}

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tharwat/core/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: kMainColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: kMainColor))),
      dotsCount: 3,
    );
  }
}

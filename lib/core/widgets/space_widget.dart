import 'package:flutter/material.dart';
import 'package:tharwat/core/utlis/size_config.dart';

// space for horizintal
class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

// space for Vertical
class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}

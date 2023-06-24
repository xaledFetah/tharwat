import 'package:flutter/material.dart';
import 'package:tharwat/core/constants.dart';
import 'package:tharwat/core/utlis/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, required this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        height: 50,
        color: Color(0xff69a03a),
        onPressed: () {},
        child: Text(
          text!,
          style: TextStyle(
              fontSize: 16,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

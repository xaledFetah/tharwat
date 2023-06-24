import 'package:flutter/material.dart';
import 'package:tharwat/core/utlis/size_config.dart';
import 'package:tharwat/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      this.srcImage,
      this.srcIcon,
      this.TextTitle,
      this.textSubTitle});
  final String? srcImage;
  final String? srcIcon;

  final String? TextTitle;
  final String? textSubTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Column(
            //  page items
            children: [
              // sizedbox
              const VerticalSpace(12),
              // image
              SizedBox(
                  height: SizeConfig.defaultSize! * 22,
                  child: Image.asset(srcImage!)),

              // animation icon
              SizedBox(
                  height: SizeConfig.defaultSize! * 8,
                  child: Image.asset(srcIcon!)),
              // sizedBox
              const VerticalSpace(1),

              // title

              Text(
                TextTitle!,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2f2e41)),
              ),
              const VerticalSpace(2),

              // subtitle
              Text(
                textSubTitle!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xff78787c)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

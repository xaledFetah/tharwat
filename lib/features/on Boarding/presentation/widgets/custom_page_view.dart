import 'package:flutter/material.dart';
import 'package:tharwat/features/on%20Boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          srcImage: 'assets/images/woman.png',
          srcIcon: 'assets/images/shopping-cart.gif',
          TextTitle: 'E Shopping',
          textSubTitle: 'Explore Top Organic Fruits & Grab Them',
        ),
        PageViewItem(
          srcImage: 'assets/images/open.png',
          srcIcon: 'assets/images/delivery-scooter.gif',
          TextTitle: 'Delivery On The Way',
          textSubTitle: 'Get Your Order By Speed Delivery',
        ),
        PageViewItem(
          srcImage: 'assets/images/basket.png',
          srcIcon: 'assets/images/save-money.gif',
          TextTitle: 'Save Your Mony',
          textSubTitle: 'Suitable And Competitive Prices',
        ),
      ],
    );
  }
}

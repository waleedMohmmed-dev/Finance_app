import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/features/home_page/widgets/card_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarsouselWidget extends StatefulWidget {
  const CustomCarsouselWidget({super.key});

  @override
  State<CustomCarsouselWidget> createState() => _CustomCarsouselWidgetState();
}

class _CustomCarsouselWidgetState extends State<CustomCarsouselWidget> {
  int currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.05,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndexPage = index;
              });
            },
          ),
          items: [CardItemWidget(), CardItemWidget(), CardItemWidget()],
        ),
        const HeightSpace(16),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndexPage,
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4),
            color: Color(0xffE3E9ED),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }
}

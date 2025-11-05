import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/features/home_page/widgets/carousel_widget.dart';
import 'package:finance_app/features/home_page/widgets/custom_home_page_item.dart';
import 'package:flutter/material.dart';

class MyCardscreen extends StatelessWidget {
  const MyCardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const HeightSpace(17),
                CustomCarsouselWidget(),
                const HeightSpace(25),
                Column(
                  children: [
                    CustomHomePageItem(
                      title: " Send Money",
                      description: "Take acc to acc",
                      iconData: Icons.send,
                    ),
                    CustomHomePageItem(
                      title: "Pay the bill",
                      description: "Lorem ipsum",
                      iconData: Icons.wallet,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

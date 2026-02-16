import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_app/core/widgets/primay_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoard,
            width: double.infinity,
            height: 550.h,
            fit: BoxFit.fitWidth,
          ),
          const HeightSpace(21),
          PrimayButtonWidget(
            width: 331.w,
            height: 56.h,
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
            },
            buttonText: "Login",
          ),
          const HeightSpace(15),
          PrimayOutlinedButtonWidget(
            width: 331.w,
            height: 56.h,
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
            buttonText: "Register",
          ),
          const HeightSpace(46),
          Text(
            "Continue as a guest",
            style: AppStyles.black15BoldStyle.copyWith(
              color: const Color(0xff202955),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}

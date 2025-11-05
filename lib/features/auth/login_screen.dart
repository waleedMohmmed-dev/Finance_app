import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primay_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightSpace(12),
                  const BackButtonWidget(),
                  const HeightSpace(28),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      "Welcome back! Again!",
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  const HeightSpace(32),
                  CustomTextField(
                    controller: emailController,
                    hintText: "Enter Your Email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Email";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(15),
                  CustomTextField(
                    hintText: "Enter Your Password",
                    controller: password,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 characters";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password?",
                      style: AppStyles.black15BoldStyle.copyWith(
                        color: const Color(0xff6A707C),
                      ),
                    ),
                  ),
                  const HeightSpace(15),
                  PrimayButtonWidget(
                    buttonText: "Login",
                    onPress: () {
                      //    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).pushNamed(AppRoutes.verifyOtpScreen);
                      //  }
                    },
                  ),
                  const HeightSpace(35),
                  const CustomOrLoginWidget(),
                  const HeightSpace(22),
                  const CustomSocialLoginIcons(),
                  const HeightSpace(155),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: AppColors.primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Register Now",
                            style: AppStyles.black15BoldStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

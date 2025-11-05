import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widgets.dart';
import 'package:finance_app/features/home_page/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';

class MyProfielScreen extends StatelessWidget {
  const MyProfielScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
        child: Scaffold(
          body: Column(
            children: [
              const TopProfileNotificationWidget(),

              const HeightSpace(35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text('Full Name', style: AppStyles.subtitlesStyles),
                  ),
                  const HeightSpace(35),
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      'Waleed Mohmmed Youssef',
                      style: AppStyles.black15BoldStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const HeightSpace(35),
                  Divider(height: 1, color: Colors.grey),
                  const HeightSpace(10),
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text('Email', style: AppStyles.subtitlesStyles),
                  ),
                  const HeightSpace(10),
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      'WaleedMoh@gmail.com',
                      style: AppStyles.black15BoldStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  HeightSpace(30),
                  Divider(height: 1, color: Colors.grey),
                  HeightSpace(10),

                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      'Phone Number',
                      style: AppStyles.subtitlesStyles,
                    ),
                  ),
                  HeightSpace(10),
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      '01040509326',
                      style: AppStyles.black15BoldStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  HeightSpace(30),
                  Divider(height: 1, color: Colors.grey),
                  HeightSpace(10),

                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text('Address', style: AppStyles.subtitlesStyles),
                  ),
                  HeightSpace(10),
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      'Qena,Egypt',
                      style: AppStyles.black15BoldStyle
                        ..copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  HeightSpace(30),
                  Divider(height: 1, color: Colors.grey),
                  HeightSpace(10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

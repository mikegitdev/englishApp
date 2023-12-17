import 'dart:async';

import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  static const DELAY_MILLI_SECONDS = 5000;
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.onboardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.backgroundMain,
                height: 100.sh,
                width: 100.sw,
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.logoIcon,
                height: 213,
                width: 202,
                color: Colors.white,
                alignment: Alignment.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

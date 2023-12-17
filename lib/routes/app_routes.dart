import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:app3/presentation/splash_screen/splash_screen.dart';
import 'package:app3/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:app3/presentation/login_screen/login_screen.dart';
import 'package:app3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:app3/presentation/sound_tab_container_screen/sound_tab_container_screen.dart';
import 'package:app3/presentation/profile_tab_container_screen/profile_tab_container_screen.dart';
import 'package:app3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String mainPage = '/main_page';

  static const String soundPage = '/sound_page';

  static const String soundTabContainerScreen = '/sound_tab_container_screen';

  static const String soundsPage = '/sounds_page';

  static const String profilePage = '/profile_page';

  static const String profileTabContainerScreen =
      '/profile_tab_container_screen';

  static const String meditationPage = '/meditation_page';

  static const String sleepPage = '/sleep_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    soundTabContainerScreen: (context) => SoundTabContainerScreen(),
    profileTabContainerScreen: (context) => ProfileTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };

  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(animation: animation, child: child);
      },
    );
  }
}

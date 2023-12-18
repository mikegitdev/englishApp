import 'package:app3/presentation/main_page/main_page.dart';
import 'package:app3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:app3/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/app_export.dart';
import 'package:app3/theme/theme_helper.dart';
import 'package:app3/routes/app_routes.dart';

import 'presentation/login_screen/login_screen.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  // ThemeHelper().changeTheme('primary');
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: false,
        splitScreenMode: false,
        builder: (context, _) {
          return MaterialApp(
            theme: theme,
            title: 'app3',
            debugShowCheckedModeBanner: false,
            navigatorKey: NavigatorService.navigatorKey,
            localizationsDelegates: [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale(
                'en',
                '',
              ),
            ],
            initialRoute: AppRoutes.splashScreen,
            routes: AppRoutes.routes,
            onGenerateRoute: (settings) {
              return AppRoutes.fadeThrough(settings, (context) {
                switch (settings.name) {
                  case AppRoutes.mainPage:
                    return MainPage();
                  case AppRoutes.signUpScreen:
                    return SignUpScreen();
                  case AppRoutes.loginScreen:
                    return LoginScreen();
                  case AppRoutes.splashScreen:
                    return SplashScreen();
                  default:
                    return const SizedBox.shrink();
                }
              });
            },
          );
        });
  }
}

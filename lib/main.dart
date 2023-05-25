import 'package:cook_catalogue/pages/detail_page.dart';
import 'package:cook_catalogue/pages/home_page.dart';
import 'package:cook_catalogue/pages/login_page.dart';
import 'package:cook_catalogue/pages/splash_page.dart';
import 'package:flutter/material.dart';
import '../widgets/theme.dart';
import '/utils/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.splash_route,
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.login_route: (context) => LoginPage(),
        MyRoutes.home_route: (context) => HomePage(),
        MyRoutes.splash_route: (context) => SplashScreen(),
        MyRoutes.detail_route: (context) => Detail_page()
      },
    );
  }
}

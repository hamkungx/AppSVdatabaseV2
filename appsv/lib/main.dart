import 'package:appsv/screen/login.dart';
import 'package:appsv/screen/register.dart';
import 'package:appsv/splash_screen_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreenPage.page,
      routes: {
        SplashScreenPage.page: (_) => SplashScreenPage(),
        LoginPage.page: (_) => LoginPage(),
        RegisterPage.page: (_) => RegisterPage()
      },
    );
  }
}

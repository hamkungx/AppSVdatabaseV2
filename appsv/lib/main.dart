import 'package:appsv/screen/home/detail.dart';
import 'package:appsv/screen/home/home.dart';
import 'package:appsv/screen/home/more.dart';
import 'package:appsv/screen/login.dart';
import 'package:appsv/screen/model/home_model.dart';
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
        RegisterPage.page: (_) => RegisterPage(),
        HomePage.page: (_) => HomePage()
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case MorePage.page:
            final homeie = settings.arguments as homei;
            return MaterialPageRoute(builder: (context) => MorePage(homeie));

          case ItemDetailPage.page:
            final Homeim = settings.arguments as homeim;
            return MaterialPageRoute(
                builder: (context) => ItemDetailPage(Homeim));
          default:
        }
      },
    );
  }
}

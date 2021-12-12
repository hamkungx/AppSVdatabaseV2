import 'package:appsv/screen/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  static const String page = "splashscreen";
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void init() async {
    await Firebase.initializeApp();

    await Future.delayed(const Duration(seconds: 1));

    Navigator.pushNamed(context, LoginPage.page);
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Container()));
  }
}

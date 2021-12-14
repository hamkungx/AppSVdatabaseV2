import 'package:appsv/screen/home/home.dart';
import 'package:appsv/screen/profile/auth_controller.dart';
import 'package:appsv/screen/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String page = "login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthController authController = AuthController();
  final GlobalKey formkey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passController = TextEditingController();

  void onLogin() {
    authController.onLogin(userController.text, passController.text);
  }

  void NextHome() {
    Navigator.pushNamed(context, HomePage.page);
  }

  void toRegister() {
    Navigator.pushNamed(context, RegisterPage.page);
  }

  @override
  void dispose() {
    userController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: SafeArea(
          child: Column(children: [
        Center(
            child: Image.network(
          "https://cdn.shopify.com/s/files/1/2292/0133/collections/stardew_600x400_crop_center.png?v=1559770092",
          width: 400,
        )),
        Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  validator: (String? message) {
                    return message == null || message.length >= 5
                        ? "ต้องใส่มากกว่า 5 ตัวอักษร"
                        : null;
                  },
                  controller: userController,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                )
              ],
            )),
        SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(onPressed: onLogin, child: Text("Login")),
            )),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Align(
              alignment: Alignment.centerRight,
              child:
                  TextButton(onPressed: toRegister, child: Text("Register"))),
        ),
      ])),
    ));
  }
}

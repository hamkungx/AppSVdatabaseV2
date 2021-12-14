import 'package:appsv/screen/model/user_model.dart';
import 'package:appsv/screen/profile/auth_controller.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static const String page = "register";
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthController authController = AuthController();
  final userController = TextEditingController();
  final passController = TextEditingController();
  final fullnameController = TextEditingController();

  void _onRegister() {
    UserModel userModel = UserModel(
      fullname: fullnameController.text,
      username: userController.text,
      password: passController.text,
    );
    authController.onRegister(userModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: SafeArea(
        child: Column(
          children: [
            Center(
                child: Image.network(
              "https://th-live-05.slatic.net/p/fa1453710d2245e0fa1f1743c4bf0097.jpg_720x720q80.jpg_.webp",
              width: 400,
            )),
            TextField(
              controller: userController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
                obscureText: true,
                controller: passController,
                decoration: const InputDecoration(labelText: "Password")),
            TextField(
              controller: fullnameController,
              decoration: const InputDecoration(labelText: "Fullname"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: _onRegister, child: const Text("Register")),
            )
          ],
        ),
      ),
    ));
  }
}

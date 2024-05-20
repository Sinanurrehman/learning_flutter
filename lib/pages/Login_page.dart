import 'package:flutter/material.dart';
import 'package:application_1/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [Image.asset("assets/images/login_image.png")],
      ),
    );
  }
}
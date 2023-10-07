import 'package:flutter/material.dart';

import '../../components/login/login_body_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: LoginBodyScreen(
        emailController: emailController,
        passController: passController,
        formKey: formKey,
      ),
    );
  }
}

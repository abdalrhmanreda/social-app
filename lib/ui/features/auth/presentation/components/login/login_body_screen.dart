import 'package:flutter/material.dart';

import 'bulid_login_screen_body.dart';

class LoginBodyScreen extends StatelessWidget {
  const LoginBodyScreen({
    super.key,
    required this.emailController,
    required this.passController,
    required this.formKey,
  });

  final TextEditingController emailController;
  final TextEditingController passController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return buildLoginScreenBody(
      emailController: emailController,
      passController: passController,
      context: context,
      formKey: formKey,
    );
  }
}

import 'package:flutter/material.dart';

import 'bulid_register_screen_body.dart';

class RegisterBodyScreen extends StatelessWidget {
  const RegisterBodyScreen({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passController,
    required this.nameController,
    required this.phoneController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passController;
  final TextEditingController nameController;
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return buildRegisterScreenBody(
      context: context,
      passController: passController,
      emailController: emailController,
      nameController: nameController,
      formKey: formKey,
      phoneController: phoneController,
    );
  }
}

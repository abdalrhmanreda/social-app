import 'package:flutter/material.dart';

import '../../components/register/register_body_Screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      body: Center(
        child: RegisterBodyScreen(
          formKey: formKey,
          emailController: emailController,
          passController: passController,
          nameController: nameController,
          phoneController: phoneController,
        ),
      ),
    );
  }
}

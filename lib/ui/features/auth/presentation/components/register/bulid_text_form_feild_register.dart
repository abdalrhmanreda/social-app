import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../../../core/components/custom_text_form_feild.dart';
import '../../../../../../generated/l10n.dart';
import '../login/bulid_text_form_feild_login.dart';

Column buildTextFormFeildRegister({
  required BuildContext context,
  required TextEditingController emailController,
  required TextEditingController passController,
  required TextEditingController nameController,
  required TextEditingController phoneController,
}) {
  return Column(
    children: [
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
      CustomTextFormField(
        isPassword: false,
        type: TextInputType.name,
        controller: nameController,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        onSubmitted: (value) {
          return null;
        },
        validate: (value) {
          if (value!.isEmpty) {
            return 'Should enter your name';
          } else {
            return null;
          }
        },
        prefixIcon: IconlyBroken.profile,
        label: S.of(context).registerFullName,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
      CustomTextFormField(
        isPassword: false,
        controller: phoneController,
        type: TextInputType.phone,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        onSubmitted: (value) {
          return null;
        },
        validate: (value) {
          if (value!.isEmpty) {
            return 'Should enter your name';
          } else {
            return null;
          }
        },
        prefixIcon: IconlyBroken.call,
        label: S.of(context).registerPhone,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
      buildTextFormFeildLogin(
          context: context,
          emailController: emailController,
          passController: passController),
      SizedBox(
        height: MediaQuery.of(context).size.height / 40,
      ),
    ],
  );
}

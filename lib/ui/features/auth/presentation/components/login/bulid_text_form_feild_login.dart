import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../../../core/components/custom_text_form_feild.dart';
import '../../../../../../generated/l10n.dart';

Column buildTextFormFeildLogin({
  required BuildContext context,
  required TextEditingController emailController,
  required TextEditingController passController,
}) {
  return Column(
    children: [
      CustomTextFormField(
        isPassword: false,
        type: TextInputType.emailAddress,
        controller: emailController,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            )),
        onSubmitted: (value) {
          return null;
        },
        validate: (value) {
          return null;
        },
        prefixIcon: IconlyBroken.message,
        label: S.of(context).loginEmailAddress,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
      CustomTextFormField(
        isPassword: true,
        maxLine: 1,
        controller: passController,
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
          return null;
        },
        prefixIcon: IconlyBroken.lock,
        label: S.of(context).loginPassword,
        suffixIcon: IconlyBroken.hide,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
    ],
  );
}

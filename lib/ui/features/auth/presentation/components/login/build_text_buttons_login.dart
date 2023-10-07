import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../../config/routes/routes_path.dart';
import '../../../../../../core/components/custom_divider.dart';
import '../../../../../../core/components/custom_navigatation.dart';
import '../../../../../../core/components/custom_text_button.dart';
import '../../../../../../generated/l10n.dart';

Column buildTextButtonsLogin(BuildContext context) {
  return Column(
    children: [
      Center(
        child: CustomTextButton(
            onPressed: () {}, text: S.of(context).loginForgetPassword),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myDivider(MediaQuery.of(context).size.width / 2.9, 1),
          SizedBox(
            width: MediaQuery.of(context).size.width / 35,
          ),
          Text(S.of(context).loginOr),
          SizedBox(
            width: MediaQuery.of(context).size.width / 35,
          ),
          myDivider(MediaQuery.of(context).size.width / 2.94, 1),
        ],
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 30,
      ),
      Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 50),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(Logos.google),
            SizedBox(
              width: MediaQuery.of(context).size.width / 30,
            ),
            const Text('Login with google')
          ],
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
      Center(
        child: CustomTextButton(
            onPressed: () {
              CustomNavigation.navigateByNamedTo(context, RoutePath.register);
            },
            text: S.of(context).loginCreateAccount),
      ),
    ],
  );
}

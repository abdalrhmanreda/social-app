import 'package:flutter/material.dart';
import 'package:social_app/core/components/custom_outline_button.dart';

import '../../../../../../generated/l10n.dart';

Padding buildEditProfileAndShareProfileButtons(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width / 50,
    ),
    child: Row(
      children: [
        Expanded(
          child: CustomOutlineButton(
            text: S.of(context).profileEdit,
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 50,
        ),
        Expanded(
          child: CustomOutlineButton(
            text: S.of(context).profileShare,
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}

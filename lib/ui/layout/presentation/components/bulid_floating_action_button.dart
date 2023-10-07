import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../config/colors/app_colors.dart';

FloatingActionButton buildLayoutFloatingActionButton() {
  return FloatingActionButton(
    onPressed: () {},
    backgroundColor: const Color(AppColors.kPrimaryColor),
    child: const Icon(
      IconlyBroken.plus,
      color: Colors.white,
    ),
  );
}

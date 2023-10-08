import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:social_app/config/routes/routes_path.dart';
import 'package:social_app/core/components/custom_navigatation.dart';

import '../../../../config/colors/app_colors.dart';

FloatingActionButton buildLayoutFloatingActionButton(context) {
  return FloatingActionButton(
    onPressed: () {
      CustomNavigation.navigateByNamedTo(context, RoutePath.addPost);
    },
    backgroundColor: const Color(AppColors.kPrimaryColor),
    child: const Icon(
      IconlyBroken.plus,
      color: Colors.white,
    ),
  );
}

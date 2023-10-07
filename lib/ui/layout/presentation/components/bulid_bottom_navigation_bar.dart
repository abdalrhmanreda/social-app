import 'package:flutter/material.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/cubit/app_cubit.dart';

BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(
    items: AppCubit.get(context).items,
    currentIndex: AppCubit.get(context).currentIndex,
    selectedItemColor: const Color(AppColors.kPrimaryColor),
    onTap: (index) {
      AppCubit.get(context).changeNavBar(index);
    },
  );
}

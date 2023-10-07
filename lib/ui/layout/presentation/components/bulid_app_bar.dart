import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/cubit/app_cubit.dart';

AppBar buildLayoutAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      AppCubit.get(context).titles[AppCubit.get(context).currentIndex],
      style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
            fontSize: 18.sp,
          ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(IconlyBroken.notification),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/cubit/app_cubit.dart';

import '../components/bulid_app_bar.dart';
import '../components/bulid_bottom_navigation_bar.dart';
import '../components/bulid_floating_action_button.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: buildLayoutAppBar(context),
          body:
              AppCubit.get(context).screens[AppCubit.get(context).currentIndex],
          floatingActionButton: buildLayoutFloatingActionButton(context),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: buildBottomNavigationBar(context),
        );
      },
    );
  }
}

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../config/routes/routes_path.dart';
import '../../../../../../core/components/custom_button.dart';
import '../../../../../../core/components/custom_navigatation.dart';
import '../../../../../../core/components/flutter_toast.dart';
import '../../../../../../core/components/progress_indector.dart';
import '../../../../../../generated/assets.dart';
import '../../../../../../generated/l10n.dart';
import '../../controller/auth_cubit.dart';
import 'build_text_buttons_login.dart';
import 'bulid_text_form_feild_login.dart';

BlocConsumer<AuthCubit, AuthStates> buildLoginScreenBody({
  required BuildContext context,
  required TextEditingController emailController,
  required TextEditingController passController,
  required GlobalKey<FormState> formKey,
}) {
  return BlocConsumer<AuthCubit, AuthStates>(
    listener: (context, state) {
      if (state is LoginSuccessState) {
        showToast(message: 'Login SuccessFully', state: ToastState.SUCCESS);
        CustomNavigation.navigateAndFinishNyNamed(context, RoutePath.layout);
      } else if (state is FailureState) {
        showToast(message: state.message, state: ToastState.ERROR);
      }
    },
    builder: (context, state) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 15),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.authSignIn,
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  Text(
                    S.of(context).loginTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 30.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  buildTextFormFeildLogin(
                    context: context,
                    emailController: emailController,
                    passController: passController,
                  ),
                  ConditionalBuilder(
                    condition: state is! LoadingState,
                    builder: (context) => CustomButton(
                      onPressed: () {
                        callUserLoginMethod(
                            context, emailController, passController);
                      },
                      text: 'Sign in',
                      height: 44.h,
                      width: MediaQuery.of(context).size.width,
                      radius: 15,
                      color: AppColors.kPrimaryColor,
                      textColor: 0xffffffff,
                      vertical: 0,
                      horizontal: 0,
                      fontSize: 16,
                    ),
                    fallback: (context) =>
                        const Center(child: CustomLoadingIndicator()),
                  ),
                  buildTextButtonsLogin(context),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

void callUserLoginMethod(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passController) {
  AuthCubit.get(context).userLogin(
    email: emailController.text,
    password: passController.text,
  );
}

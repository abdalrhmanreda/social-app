import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/config/routes/routes_path.dart';
import 'package:social_app/core/components/custom_navigatation.dart';
import 'package:social_app/core/components/flutter_toast.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/components/custom_button.dart';
import '../../../../../../core/components/custom_text_button.dart';
import '../../../../../../core/components/progress_indector.dart';
import '../../../../../../generated/assets.dart';
import '../../../../../../generated/l10n.dart';
import '../../controller/auth_cubit.dart';
import 'bulid_text_form_feild_register.dart';

BlocConsumer buildRegisterScreenBody({
  required BuildContext context,
  required GlobalKey<FormState> formKey,
  required TextEditingController nameController,
  required TextEditingController emailController,
  required TextEditingController passController,
  required TextEditingController phoneController,
}) {
  return BlocConsumer<AuthCubit, AuthStates>(
    listener: (context, state) {
      if (state is CreateUserSuccessState) {
        showToast(
            message: 'Account Created Successfully', state: ToastState.SUCCESS);
        CustomNavigation.navigateAndFinishNyNamed(context, RoutePath.layout);
      } else if (state is FailureState) {
        showToast(message: state.message, state: ToastState.ERROR);
      }
    },
    builder: (context, state) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 15),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    Assets.authSignUp,
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Text(
                  'Sign Up',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 30.sp,
                      ),
                ),
                buildTextFormFeildRegister(
                  context: context,
                  passController: passController,
                  emailController: emailController,
                  nameController: nameController,
                  phoneController: phoneController,
                ),
                ConditionalBuilder(
                  condition: state is! LoadingState,
                  builder: (context) => CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        AuthCubit.get(context).signUp(
                          name: nameController.text,
                          password: passController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                        );
                      }
                    },
                    text: S.of(context).registerButton,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).registerHaveAccount),
                    CustomTextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: 'Login',
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

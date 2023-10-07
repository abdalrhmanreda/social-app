import 'package:flutter/material.dart';

import '../../../config/routes/routes_path.dart';
import '../../../core/cache/cache_helper.dart';
import '../../../core/components/custom_navigatation.dart';
import '../../../core/components/custom_text_button.dart';
import '../../../generated/l10n.dart';
import '../components/on_boarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextButton(
              onPressed: () {
                onPressedMethod(context);
              },
              text: S.of(context).onBoardingButtonSkip,
            ),
          ),
        ],
      ),
      body: const OnBoardingScreenBody(),
    );
  }

  void onPressedMethod(BuildContext context) {
    CacheHelper.saveData(key: 'onBoarding', value: true)!.then((value) {
      debugPrint('onBoarding : $value');

      CustomNavigation.navigateAndFinishNyNamed(context, RoutePath.login);
    });
  }
}

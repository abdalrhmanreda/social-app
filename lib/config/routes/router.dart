import 'package:flutter/material.dart';
import 'package:social_app/config/routes/routes_path.dart';

import '../../ui/features/auth/presentation/screens/login/login.dart';
import '../../ui/features/auth/presentation/screens/register/register_screen.dart';
import '../../ui/intro/screens/on_boarding_screen.dart';
import '../../ui/layout/presentation/screens/layout_screen.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.onBoarding:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingScreen(),
      );
    case RoutePath.login:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case RoutePath.register:
      return MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      );
    case RoutePath.selectGender:
    case RoutePath.layout:
      return MaterialPageRoute(
        builder: (context) => const LayoutScreen(),
      );
  }
}

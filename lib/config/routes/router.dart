import 'package:flutter/material.dart';
import 'package:social_app/config/routes/routes_path.dart';
import 'package:social_app/ui/features/auth/presentation/screens/profile/profile_screen.dart';
import 'package:social_app/ui/features/chat/presentation/screens/chat_screen.dart';
import 'package:social_app/ui/features/posts/presentation/screens/add_post_screen.dart';
import 'package:social_app/ui/features/posts/presentation/screens/feeds_screens.dart';

import '../../ui/features/auth/presentation/screens/login/login.dart';
import '../../ui/features/auth/presentation/screens/register/register_screen.dart';
import '../../ui/features/posts/presentation/screens/reels_screen.dart';
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
    case RoutePath.layout:
      return MaterialPageRoute(
        builder: (context) => const LayoutScreen(),
      );

    case RoutePath.feeds:
      return MaterialPageRoute(
        builder: (context) => const FeedsScreen(),
      );

    case RoutePath.chat:
      return MaterialPageRoute(
        builder: (context) => const ChatScreen(),
      );
    case RoutePath.reels:
      return MaterialPageRoute(
        builder: (context) => const ReelsScreen(),
      );

    case RoutePath.profile:
      return MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      );

    case RoutePath.addPost:
      return MaterialPageRoute(
        builder: (context) => const AddPostScreen(),
      );
  }
}

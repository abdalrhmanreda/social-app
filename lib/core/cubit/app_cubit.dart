import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:social_app/ui/features/auth/presentation/screens/profile/profile_screen.dart';
import 'package:social_app/ui/features/chat/presentation/screens/chat_screen.dart';
import 'package:social_app/ui/features/posts/presentation/screens/feeds_screens.dart';
import 'package:social_app/ui/features/posts/presentation/screens/reels_screen.dart';

import '../../generated/l10n.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  List<String> titles(context) => [
        S.of(context).layoutTitle1,
        S.of(context).layoutTitle2,
        S.of(context).layoutTitle3,
        S.of(context).layoutTitle4,
      ];
  List<Widget> screens = const [
    FeedsScreen(),
    ChatScreen(),
    ReelsScreen(),
    ProfileScreen(),
  ];
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(IconlyBroken.home),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBroken.chat),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBroken.video),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBroken.profile),
      label: '',
    ),
  ];
  int currentIndex = 0;
  void changeNavBar(int index) {
    currentIndex = index;
    emit(ChangeNavBar());
  }
}

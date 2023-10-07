import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  List<String> titles = const [
    'Feeds',
    'Chat',
    'Reels',
    'Profile',
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

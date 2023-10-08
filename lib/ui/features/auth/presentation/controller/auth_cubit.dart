import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/cache/hive_cache.dart';

import '../../models/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);

  String currentOption = '';
  void userLogin({required String email, required String password}) {
    emit(LoadingState());
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      emit(LoginSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState(message: error.toString()));
    });
  }

  // void userRegister({
  //   required String password,
  //   required String email,
  //   required String name,
  //   required String gender,
  //   required String brithday,
  // }) {
  //   emit(LoadingState());
  //   FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(email: email, password: password)
  //       .then((value) {
  //     createUser(
  //       email: email,
  //       name: name,
  //       gender: gender,
  //       brithday: brithday,
  //       userId: value.user!.uid,
  //     );
  //   }).catchError((error) {
  //     debugPrint(error.toString());
  //     emit(FailureState(message: error.toString()));
  //   });
  // }
  //
  // void createUser({
  //   required String email,
  //   required String name,
  //   required String gender,
  //   required String brithday,
  //   required String userId,
  //   String? bio,
  //   String? profileImage,
  // }) {
  //   UserModel userModel = UserModel(
  //     email: email,
  //     name: name,
  //     birthday: brithday,
  //     gender: gender,
  //     bio: 'bio......',
  //     profileImage:
  //         'https://www.freepik.com/free-vector/isolated-young-handsome-man-different-poses-white-background-illustration_36332638.htm#query=profile%20illustration&position=33&from_view=search&track=ais',
  //     userId: userId,
  //   );
  //   emit(LoadingState());
  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(userId)
  //       .set(userModel.toMap())
  //       .then((value) {
  //     emit(CreateUserSuccessState());
  //   }).catchError((error) {
  //     debugPrint(error.toString());
  //     emit(FailureState(message: error.toString()));
  //   });
  // }

  void signUp({
    required String name,
    required String phone,
    required String password,
    required String email,
  }) {
    emit(LoadingState());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      createUser(
          name: name, email: email, uId: value.user!.uid, phoneNumber: phone);
      HiveCache.saveData(key: 'uId', value: value.user!.uid.toString());
    }).catchError((error) {
      print(error.toString());
      emit(FailureState(message: error.toString()));
    });
  }

  void createUser({
    required String name,
    required String email,
    required String phoneNumber,
    required String uId,
    String? bio,
    profileImage,
  }) {
    UserModel userModel = UserModel(
      name: name,
      email: email,
      userId: uId,
      phoneNumber: phoneNumber,
      bio: 'bio.........',
      profileImage:
          'https://img.freepik.com/free-vector/isolated-young-handsome-man-different-poses-white-background-illustration_632498-855.jpg?w=740&t=st=1690374148~exp=1690374748~hmac=b04175c4106ba1a135929d9ae938ebb50b403cb7709bcb3f11869ae07cd69b2d',
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(userModel.toMap())
        .then((value) {
      emit(CreateUserSuccessState(uId: uId));
    }).catchError((error) {
      print(error.toString());
      emit(FailureState(message: error.toString()));
    });
  }
}

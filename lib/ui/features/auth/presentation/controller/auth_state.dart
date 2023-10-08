part of 'auth_cubit.dart';

@immutable
abstract class AuthStates {}

class AuthInitial extends AuthStates {}

class LoginSuccessState extends AuthStates {}

class CreateUserSuccessState extends AuthStates {
  final String uId;

  CreateUserSuccessState({required this.uId});
}

class FailureState extends AuthStates {
  final String message;

  FailureState({required this.message});
}

class LoadingState extends AuthStates {}

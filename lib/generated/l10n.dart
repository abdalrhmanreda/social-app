// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Meet new friends nearby you`
  String get onBoardingTitle1 {
    return Intl.message(
      'Meet new friends nearby you',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Have fun way to share the moment with friends`
  String get onBoardingTitle2 {
    return Intl.message(
      'Have fun way to share the moment with friends',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Share your happy moments`
  String get onBoardingTitle3 {
    return Intl.message(
      'Share your happy moments',
      name: 'onBoardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Wave enables users to connect, interact, and share content with each other in a virtual environment`
  String get onBoardingDescription1 {
    return Intl.message(
      'Wave enables users to connect, interact, and share content with each other in a virtual environment',
      name: 'onBoardingDescription1',
      desc: '',
      args: [],
    );
  }

  /// `'Wave allows users to create a profile, connect with friends or like-minded individuals, share information, photos, and videos`
  String get onBoardingDescription2 {
    return Intl.message(
      '\'Wave allows users to create a profile, connect with friends or like-minded individuals, share information, photos, and videos',
      name: 'onBoardingDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Wave  designed to facilitate communication, networking, and sharing of information among individuals or groups`
  String get onBoardingDescription3 {
    return Intl.message(
      'Wave  designed to facilitate communication, networking, and sharing of information among individuals or groups',
      name: 'onBoardingDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onBoardingButton {
    return Intl.message(
      'Get Started',
      name: 'onBoardingButton',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onBoardingButtonSkip {
    return Intl.message(
      'Skip',
      name: 'onBoardingButtonSkip',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get loginTitle {
    return Intl.message(
      'Sign in',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get loginEmailAddress {
    return Intl.message(
      'Email Address',
      name: 'loginEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginPassword {
    return Intl.message(
      'Password',
      name: 'loginPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get loginForgetPassword {
    return Intl.message(
      'Forget Password ?',
      name: 'loginForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get loginOr {
    return Intl.message(
      'or',
      name: 'loginOr',
      desc: '',
      args: [],
    );
  }

  /// `Create an account ?`
  String get loginCreateAccount {
    return Intl.message(
      'Create an account ?',
      name: 'loginCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get registerTitle {
    return Intl.message(
      'Sign up',
      name: 'registerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get registerFullName {
    return Intl.message(
      'Full name',
      name: 'registerFullName',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get registerPhone {
    return Intl.message(
      'Phone number',
      name: 'registerPhone',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get registerButton {
    return Intl.message(
      'Continue',
      name: 'registerButton',
      desc: '',
      args: [],
    );
  }

  /// `loading`
  String get loading {
    return Intl.message(
      'loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ?`
  String get registerHaveAccount {
    return Intl.message(
      'Already have an account ?',
      name: 'registerHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Feeds`
  String get layoutTitle1 {
    return Intl.message(
      'Feeds',
      name: 'layoutTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get layoutTitle2 {
    return Intl.message(
      'Chat',
      name: 'layoutTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Reels`
  String get layoutTitle3 {
    return Intl.message(
      'Reels',
      name: 'layoutTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get layoutTitle4 {
    return Intl.message(
      'Profile',
      name: 'layoutTitle4',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get profileEdit {
    return Intl.message(
      'Edit Profile',
      name: 'profileEdit',
      desc: '',
      args: [],
    );
  }

  /// `Share Profile`
  String get profileShare {
    return Intl.message(
      'Share Profile',
      name: 'profileShare',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

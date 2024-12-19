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

  /// `Let’s`
  String get lets {
    return Intl.message(
      'Let’s',
      name: 'lets',
      desc: '',
      args: [],
    );
  }

  /// `Sign In 👇`
  String get signIn {
    return Intl.message(
      'Sign In 👇',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `E-Form System`
  String get txtHomePageTitle {
    return Intl.message(
      'E-Form System',
      name: 'txtHomePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get txtUsername {
    return Intl.message(
      'Username',
      name: 'txtUsername',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get txtPassword {
    return Intl.message(
      'Password',
      name: 'txtPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get btnLogin {
    return Intl.message(
      'Login',
      name: 'btnLogin',
      desc: '',
      args: [],
    );
  }

  /// `E-Form system of the factory\n\nTrung Nguyen Legend Group`
  String get txtSlogan {
    return Intl.message(
      'E-Form system of the factory\n\nTrung Nguyen Legend Group',
      name: 'txtSlogan',
      desc: '',
      args: [],
    );
  }

  /// `Trung Nguyen Legend Group`
  String get textWelcomeLogin {
    return Intl.message(
      'Trung Nguyen Legend Group',
      name: 'textWelcomeLogin',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get txtChangePassword {
    return Intl.message(
      'Change Password',
      name: 'txtChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get txtLogout {
    return Intl.message(
      'Logout',
      name: 'txtLogout',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get txtClose {
    return Intl.message(
      'Close',
      name: 'txtClose',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get txtOk {
    return Intl.message(
      'OK',
      name: 'txtOk',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get txtCancel {
    return Intl.message(
      'Cancel',
      name: 'txtCancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get txtDel {
    return Intl.message(
      'Delete',
      name: 'txtDel',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get txtFilter {
    return Intl.message(
      'Filter',
      name: 'txtFilter',
      desc: '',
      args: [],
    );
  }

  /// `Insert`
  String get txtInsert {
    return Intl.message(
      'Insert',
      name: 'txtInsert',
      desc: '',
      args: [],
    );
  }

  /// `Approve`
  String get txtApprove {
    return Intl.message(
      'Approve',
      name: 'txtApprove',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get txtConfirm {
    return Intl.message(
      'Confirm',
      name: 'txtConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get txtEdit {
    return Intl.message(
      'Edit',
      name: 'txtEdit',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get txtSave {
    return Intl.message(
      'Save',
      name: 'txtSave',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get txtView {
    return Intl.message(
      'View',
      name: 'txtView',
      desc: '',
      args: [],
    );
  }

  /// `Form List`
  String get txtLstForm {
    return Intl.message(
      'Form List',
      name: 'txtLstForm',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
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
      Locale.fromSubtags(languageCode: 'vi'),
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

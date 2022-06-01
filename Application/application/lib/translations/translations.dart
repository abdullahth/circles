import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import './langs/en.dart';
import './langs/ar.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': enTags,
        'ar': arTags,
      };

  static Locale get fallbackLocale => const Locale('en');

  static List<Locale> get supportedLocales => const <Locale>[
        Locale('en'),
        Locale('ar'),
      ];

  static List<LocalizationsDelegate<dynamic>> get localizationsDelegates => [
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
        RefreshLocalizations.delegate
      ];
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalization {
  final Locale? locale;

  AppLocalization({this.locale});
  static AppLocalization? of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  static LocalizationsDelegate<AppLocalization> delegate =
  _AppLocalizationsDelegate();
  late Map<String, String> _localizedString;

  Future loadJsonLanguage() async {
    String jsonString = await rootBundle.loadString(
      'assets/lang/${locale!.languageCode}.json',
    );
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedString = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String translate(String key) => _localizedString[key] ?? '';
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) {
    return ['ar', 'en'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localizations = AppLocalization(locale: locale);
    await localizations.loadJsonLanguage();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}

extension TranslateX on String {
  String tr(BuildContext context) {
    return AppLocalization.of(context)!.translate(this);
  }
}

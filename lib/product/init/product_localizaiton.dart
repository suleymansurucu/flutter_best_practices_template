import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_best_practices_template/product/utility/constant/enums/locales.dart';

/// This class provides localization support for the application using the
final class ProductLocalization extends EasyLocalization {
  /// [ProductLocalization] constructor initializes the localization with
  ProductLocalization({required super.child})
    : super(
        supportedLocales: _supportedLocales,
        path: TranslationsPath,
        useOnlyLangCode: true,
      );

  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String TranslationsPath = 'asset/translations';

  /// Updates the application's locale to the specified [locale].
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales locale,
  }) async {
    await context.setLocale(locale.locale);
  }
}

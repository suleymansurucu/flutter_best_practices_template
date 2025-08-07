import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

/// This class is used to initialize the application process.
@immutable
final class ApplicationInitialize {
  /// Private constructor to prevent instantiation.
  const ApplicationInitialize.setup();

  Future<void> make() async {
    /// Initializes the application by running the _initialize method in a guarded zone
    /// to catch any errors that may occur during initialization.
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error);
    });
    ;
  }

  /// Initializes the application by ensuring that the EasyLocalization
  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [];

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    FlutterError.onError = (details) {
      ///Crashlytics log insert here
      ///custom service or custom logger insert here

      ///TODO: Add your custom error handling logic here
      Logger().e(details.exceptionAsString());
    };
  }
}

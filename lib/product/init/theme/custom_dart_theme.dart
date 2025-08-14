import 'package:flutter/material.dart';
import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter_best_practices_template/product/init/theme/custom_theme.dart';
import 'package:flutter_best_practices_template/product/init/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomDartTheme implements CustomTheme {
  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();

  @override
  // TODO: change to initilize ThemeData instead of computed
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    colorScheme: MaterialTheme.darkScheme(),
    fontFamily: GoogleFonts.aBeeZee().fontFamily,
    floatingActionButtonTheme: floatingActionButtonThemeData,
  );
}

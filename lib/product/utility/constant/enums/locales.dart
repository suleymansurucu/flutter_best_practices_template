import 'dart:ui';

/// This enum defines the supported locales for the application.
enum Locales {
  /// Turkish locale.
  tr(Locale('tr', 'TR')),

  /// English locale.
  en(
    Locale(
      'en,'
      'US',
    ),
  );

  /// The locale associated with this enum value.
  final Locale locale;

  /// Creates a [Locales] enum value with the specified [locale].
  const Locales(this.locale);



}

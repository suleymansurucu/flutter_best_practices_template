import 'package:envied/envied.dart';

import 'app_configuration.dart';

part 'dev_env.g.dart';
@Envied(obfuscate: true, path: 'assets/env/.env.dev')
final class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv._apiKey;

  @override
  String get apiBaseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}
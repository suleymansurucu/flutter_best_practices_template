import 'package:envied/envied.dart';

import 'app_configuration.dart';
part 'prod_env.g.dart';

@Envied(obfuscate: true, path: 'assets/env/.env.prod')
final class ProdEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;
  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _ProdEnv._apiKey;

  @override
  String get apiBaseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}

import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';


final class AppEnvironment {

AppEnvironment.setup({required AppConfiguration config}){
  _config = config;
}

AppEnvironment.general(){
  _config = !kDebugMode ? DevEnv() : ProdEnv();
}
static late AppConfiguration _config;
}

enum AppEnvironmentItems {
  baseUrl,
  apiKey;

  String get value {


   try {
     switch (this) {
       case AppEnvironmentItems.baseUrl:
         return AppEnvironment._config.apiBaseUrl;
       case AppEnvironmentItems.apiKey:
         return AppEnvironment._config.apiKey;
     }     } catch (e) {
      throw Exception('Error retrieving value for $name: $e');
    }
  }
}
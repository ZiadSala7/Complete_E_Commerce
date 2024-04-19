import 'package:flutter_dotenv/flutter_dotenv.dart';

// Switch between envVariables
enum EnvTypeEnum { dev, prod }

class EnvVariables {
  // Singelton design pattern
  EnvVariables._();
  static final EnvVariables instance = EnvVariables._();

  String _envType = '';

  // Loading env variables
  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }
    _envType = dotenv.get('ENV_TYPE');
  }

  String get envType => _envType;
}

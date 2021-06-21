import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;  

@InjectableInit(
  initializerName:  r'$initGetIt'
)
void configureDependencies(String environment) => $initGetIt(getIt);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
  static const test = 'test';
}


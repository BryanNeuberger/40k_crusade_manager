import 'package:app_cache/cache.dart';
import 'package:business/crusade_force/services/crusade_force_database_service.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.I;

Future<void> setupServiceLocator() async {
  serviceLocator.registerSingleton<AppDatabase>(AppDatabase());
  serviceLocator.registerSingleton<CrusadeForceDatabaseService>(CrusadeForceDatabaseService());
}

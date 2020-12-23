import 'package:app_cache/cache.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.I;

Future<void> setupServiceLocator() async {
  serviceLocator.registerSingleton<AppDatabase>(AppDatabase());
  //serviceLocator.registerSingleton(instance)// TODO: Setup crusade_force_service
}

//@formatter:off

import 'package:flutter_tasks_7_3/app/service/app_service.dart';
import 'package:get_it/get_it.dart';

void registerCoreServices(GetIt getIt) {
  getIt.registerSingleton<AppService>(AppService());
}

void registerAppServices(GetIt getIt) {}

AppService environmentService() => GetIt.I.get<AppService>();

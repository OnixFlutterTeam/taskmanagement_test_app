//@formatter:off

import 'package:flutter_tasks_7_3/core/arch/data/remote/clients/dio/dio_client_module.dart';
import 'package:flutter_tasks_7_3/core/arch/data/remote/clients/dio/dio_request_processor/dio_request_processor.dart';
import 'package:get_it/get_it.dart';

void registerRemote(GetIt getIt) {
  final dioClientModule = _DioClientModule();

  getIt.registerLazySingleton<DioRequestProcessor>(
    dioClientModule.makeDioErrorHandler,
  );
  //{remote end}
}

class _DioClientModule extends DioClientModule {}

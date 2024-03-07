import 'package:flutter_tasks_7_3/core/di/app.dart';
import 'package:flutter_tasks_7_3/core/di/bloc.dart';
import 'package:flutter_tasks_7_3/core/di/local.dart';
import 'package:flutter_tasks_7_3/core/di/remote.dart';
import 'package:flutter_tasks_7_3/core/di/repository.dart';
import 'package:flutter_tasks_7_3/core/di/services.dart';
import 'package:flutter_tasks_7_3/core/di/source.dart';
import 'package:flutter_tasks_7_3/core/di/usecase.dart';
import 'package:get_it/get_it.dart';

void initializeDi(GetIt getIt) {
  registerLocal(getIt);
  registerCoreServices(getIt);
  registerRemote(getIt);
  registerSources(getIt);
  registerRepositories(getIt);
  registerApp(getIt);
  registerAppServices(getIt);
  registerUseCases(getIt);
  registerBloc(getIt);
}

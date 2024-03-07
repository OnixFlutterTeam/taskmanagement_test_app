//@formatter:off

import 'package:flutter_tasks_7_3/data/repository/task_repository_impl.dart';
import 'package:flutter_tasks_7_3/data/source/local/preferences_source/preferences_source.dart';
import 'package:flutter_tasks_7_3/domain/repository/task_repository.dart';
import 'package:get_it/get_it.dart';

//{imports end}

void registerRepositories(GetIt getIt) {
  getIt.registerSingleton<TaskRepository>(
    TaskRepositoryImpl(getIt<PreferencesSource>()),
  );
  //{repositories end}
}

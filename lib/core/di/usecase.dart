//@formatter:off

import 'package:flutter_tasks_7_3/domain/repository/task_repository.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/add_task_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/get_all_tasks_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/remove_task_usecase.dart';
import 'package:get_it/get_it.dart';

void registerUseCases(GetIt getIt) {
  getIt
    ..registerSingleton<GetAllTasksUseCase>(
      GetAllTasksUseCase(getIt.get<TaskRepository>()),
    )
    ..registerSingleton<AddTaskUseCase>(
      AddTaskUseCase(getIt.get<TaskRepository>()),
    )
    ..registerSingleton<RemoveTaskUseCase>(
      RemoveTaskUseCase(getIt.get<TaskRepository>()),
    );
}

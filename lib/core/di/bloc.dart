//@formatter:off

import 'package:flutter_tasks_7_3/app/bloc/app_bloc_imports.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/add_task_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/get_all_tasks_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/remove_task_usecase.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/bloc/task_list_screen_bloc.dart';
import 'package:get_it/get_it.dart';

//{imports end}

void registerBloc(GetIt getIt) {
  getIt
    ..registerFactory<AppBloc>(AppBloc.new)
    ..registerFactory<TaskListScreenBloc>(
      () => TaskListScreenBloc(
        getIt.get<GetAllTasksUseCase>(),
        getIt.get<AddTaskUseCase>(),
        getIt.get<RemoveTaskUseCase>(),
      ),
    );
//{bloc end}
}

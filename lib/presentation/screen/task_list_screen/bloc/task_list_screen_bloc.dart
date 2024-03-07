import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tasks_7_3/core/arch/bloc/base_bloc.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/add_task_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/get_all_tasks_usecase.dart';
import 'package:flutter_tasks_7_3/domain/usecase/task/remove_task_usecase.dart';
import 'package:flutter_tasks_7_3/presentation/screen/task_list_screen/bloc/task_list_screen_imports.dart';

class TaskListScreenBloc extends BaseBloc<TaskListScreenEvent,
    TaskListScreenState, TaskListScreenSR> {
  final GetAllTasksUseCase _getAllTasksUseCase;
  final AddTaskUseCase _addTaskUseCase;
  final RemoveTaskUseCase _removeTaskUseCase;

  TaskListScreenBloc(
    this._getAllTasksUseCase,
    this._addTaskUseCase,
    this._removeTaskUseCase,
  ) : super(const TaskListScreenState.data()) {
    on<GetTasksEvent>(_getTasks);
    on<AddTaskEvent>(_addTask);
    on<RemoveTaskEvent>(_removeTask);
  }

  FutureOr<void> _getTasks(
    GetTasksEvent event,
    Emitter<TaskListScreenState> emit,
  ) async {
    final result = await _getAllTasksUseCase();
    if (result.success) {
      emit(
        state.copyWith(tasks: result.data),
      );
    } else {
      onFailure(result.error.failure);
    }
  }

  FutureOr<void> _addTask(
    AddTaskEvent event,
    Emitter<TaskListScreenState> emit,
  ) async {
    final result = await _addTaskUseCase(task: event.task);
    if (result.success) {
      emit(
        state.copyWith(tasks: result.data),
      );
    } else {
      onFailure(result.error.failure);
    }
  }

  FutureOr<void> _removeTask(
    RemoveTaskEvent event,
    Emitter<TaskListScreenState> emit,
  ) async {
    final result = await _removeTaskUseCase(task: event.task);
    if (result.success) {
      emit(
        state.copyWith(tasks: result.data),
      );
    } else {
      onFailure(result.error.failure);
    }
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_list_screen_models.freezed.dart';

@freezed
class TaskListScreenEvent with _$TaskListScreenEvent {
  const factory TaskListScreenEvent.getAllTasks() = GetTasksEvent;

  const factory TaskListScreenEvent.addTask({required String task}) =
      AddTaskEvent;

  const factory TaskListScreenEvent.removeTask({required String task}) =
      RemoveTaskEvent;
}

@freezed
class TaskListScreenSR with _$TaskListScreenSR {
  const factory TaskListScreenSR.loadFinished() = _LoadFinished;
}

@freezed
class TaskListScreenState with _$TaskListScreenState {
  TaskListScreenState get data => this as TaskListScreenStateData;

  const TaskListScreenState._();

  const factory TaskListScreenState.data({
    @Default([]) List<String> tasks,
  }) = TaskListScreenStateData;
}

import 'package:flutter_tasks_7_3/core/arch/domain/entity/common/result.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/task_failure.dart';
import 'package:flutter_tasks_7_3/domain/repository/task_repository.dart';

class AddTaskUseCase {
  final TaskRepository _taskRepository;

  AddTaskUseCase(this._taskRepository);

  Future<Result<List<String>>> call({required String task}) async {
    //Add a new task
    final result = await _taskRepository.addTask(task);
    if (result.success) {
      final added = result.data;
      if (!added) {
        return const Result.error(failure: TaskAlreadyExistFailure());
      }
      //If added successfully, return a updated task list
      return _taskRepository.getTasks();
    }
    return Result.error(failure: result.error.failure);
  }
}

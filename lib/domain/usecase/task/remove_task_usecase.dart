import 'package:flutter_tasks_7_3/core/arch/domain/entity/common/result.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/task_failure.dart';
import 'package:flutter_tasks_7_3/domain/repository/task_repository.dart';

class RemoveTaskUseCase {
  final TaskRepository _taskRepository;

  RemoveTaskUseCase(this._taskRepository);

  Future<Result<List<String>>> call({required String task}) async {
    //Remove task
    final result = await _taskRepository.removeTask(task);

    if (result.success) {
      final removed = result.data;
      if (!removed) {
        return const Result.error(failure: TaskNotExistFailure());
      }
      //If added successfully, return a updated task list
      return _taskRepository.getTasks();
    }
    return Result.error(failure: result.error.failure);
  }
}

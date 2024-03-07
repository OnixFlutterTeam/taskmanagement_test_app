import 'package:flutter_tasks_7_3/core/arch/domain/entity/common/result.dart';
import 'package:flutter_tasks_7_3/domain/repository/task_repository.dart';

class GetAllTasksUseCase {
  final TaskRepository _taskRepository;

  GetAllTasksUseCase(this._taskRepository);

  Future<Result<List<String>>> call() async => _taskRepository.getTasks();
}

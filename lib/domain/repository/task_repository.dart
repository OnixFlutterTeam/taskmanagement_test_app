import 'package:flutter_tasks_7_3/core/arch/domain/entity/common/result.dart';

abstract class TaskRepository {
  ///Get all tasks
  Future<Result<List<String>>> getTasks();

  ///Add task ${task} to storage
  Future<Result<bool>> addTask(String task);

  ///Remove task ${task} from storage
  Future<Result<bool>> removeTask(String task);
}

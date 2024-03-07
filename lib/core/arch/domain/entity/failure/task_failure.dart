import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/failure.dart';

abstract class TaskFailure extends Failure {
  const TaskFailure();
}

class TaskIOFailure implements TaskFailure {
  const TaskIOFailure();
}

class TaskAlreadyExistFailure implements TaskFailure {
  const TaskAlreadyExistFailure();
}

class TaskNotExistFailure implements TaskFailure {
  const TaskNotExistFailure();
}

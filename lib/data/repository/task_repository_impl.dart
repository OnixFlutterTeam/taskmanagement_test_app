import 'dart:async';

import 'package:flutter_tasks_7_3/core/arch/domain/entity/common/result.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/task_failure.dart';
import 'package:flutter_tasks_7_3/core/arch/logger/app_logger_impl.dart';
import 'package:flutter_tasks_7_3/data/source/local/preferences_source/preferences_source.dart';
import 'package:flutter_tasks_7_3/domain/repository/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final PreferencesSource _preferencesSource;

  TaskRepositoryImpl(this._preferencesSource);

  @override
  Future<Result<bool>> addTask(String task) async {
    try {
      final result = await _preferencesSource.addTask(task);
      return Result.success(result);
    } catch (e) {
      logger.e(e);
      return const Result.error(failure: TaskIOFailure());
    }
  }

  @override
  Future<Result<List<String>>> getTasks() async {
    try {
      final result = await _preferencesSource.getTasks();
      return Result.success(result);
    } catch (e) {
      logger.e(e);
      return const Result.error(failure: TaskIOFailure());
    }
  }

  @override
  Future<Result<bool>> removeTask(String task) async {
    try {
      final result = await _preferencesSource.removeTask(task);
      return Result.success(result);
    } catch (e) {
      logger.e(e);
      return const Result.error(failure: TaskIOFailure());
    }
  }
}

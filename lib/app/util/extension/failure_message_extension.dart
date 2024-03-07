//@formatter:off

import 'package:flutter/material.dart';
import 'package:flutter_tasks_7_3/app/localization/generated/l10n.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/api_failure.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/failure.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/task_failure.dart';

extension FailureMessageExtension on BuildContext {
  String getApiFailureMessage(ApiFailure failure) {
    switch (failure.failure) {
      case ServerFailure.noNetwork:
        return S.current.apiFailureNoNetwork;
      case ServerFailure.exception:
        return S.current.apiFailureUndefined;
      case ServerFailure.unAuthorized:
        return S.current.apiFailureUnAuthorized;
      case ServerFailure.tooManyRequests:
        return S.current.apiFailureTooManyRequests;
      case ServerFailure.response:
        return failure.message;
      case ServerFailure.unknown:
        return S.current.apiFailureUndefined;
    }
  }

  String getTasksFailureMessage(Failure failure) {
    switch (failure.runtimeType) {
      case const (TaskIOFailure):
        {
          return S.current.taskFailureStorage;
        }
      case const (TaskAlreadyExistFailure):
        {
          return S.current.taskFailureAlreadyExist;
        }
      case const (TaskNotExistFailure):
        {
          return S.current.taskFailureNotExist;
        }
      default:
        {
          return S.current.apiFailureUndefined;
        }
    }
  }
}

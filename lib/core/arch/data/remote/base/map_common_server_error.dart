//@formatter:off

import 'package:flutter_tasks_7_3/core/arch/data/remote/error/default_api_error.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/common/data_response.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/api_failure.dart';
import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/failure.dart';
import 'package:flutter_tasks_7_3/core/arch/logger/app_logger_impl.dart';

class MapCommonServerError {
  static Failure getServerFailureDetails<T>(DataResponse<T> failure) {
    try {
      return failure.maybeWhen(
        undefinedError: (error) => ApiFailure(
          ServerFailure.unknown,
          message: error.toString(),
        ),
        apiError: _getResponseError,
        notConnected: () => ApiFailure(ServerFailure.noNetwork),
        unauthorized: () => ApiFailure(ServerFailure.unAuthorized),
        tooManyRequests: () => ApiFailure(ServerFailure.tooManyRequests),
        orElse: () => ApiFailure(ServerFailure.unknown),
      );
    } catch (e, trace) {
      logger.crash(reason: 'Mapping Error Failed', error: e, stackTrace: trace);
      return ApiFailure(ServerFailure.exception, message: e.toString());
    }
  }

  static ApiFailure _getResponseError(customError) {
    if (customError is DefaultApiError) {
      return ApiFailure(
        ServerFailure.response,
        message: customError.name,
      );
    }
    //TODO process other error types and provide results
    //TODO also add new error types to DataResponse if needed
    return ApiFailure(ServerFailure.response);
  }
}

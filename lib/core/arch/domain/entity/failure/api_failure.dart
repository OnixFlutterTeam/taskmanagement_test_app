import 'package:flutter_tasks_7_3/core/arch/domain/entity/failure/failure.dart';

class ApiFailure implements FeatureFailure {
  ApiFailure(this.failure, {this.message = ''});

  final ServerFailure failure;
  final String message;

  @override
  String toString() {
    return 'ApiFailure{$failure, message: $message}';
  }
}

enum ServerFailure {
  noNetwork,
  exception,
  unAuthorized,
  tooManyRequests,
  response,
  unknown,
}

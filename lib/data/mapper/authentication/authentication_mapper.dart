import 'package:flutter_tasks_7_3/core/arch/domain/common/converter/mapper.dart';
import 'package:flutter_tasks_7_3/data/model/remote/authentication/authentication_response.dart';
import 'package:flutter_tasks_7_3/domain/entity/authentication/authentication.dart';

class _ResponseToEntity
    implements Mapper<AuthenticationResponse, Authentication> {
  @override
  Authentication map(AuthenticationResponse from) {
    return Authentication(
      accessToken: from.accessToken ?? '',
      refreshToken: from.refreshToken ?? '',
    );
  }
}

class _RefreshEntity implements Mapper<AuthenticationResponse, Authentication> {
  @override
  Authentication map(AuthenticationResponse from) {
    return Authentication(
      accessToken: from.accessToken ?? '',
      refreshToken: from.refreshToken ?? '',
    );
  }
}

class AuthenticationMappers {
  final _responseToEntity = _ResponseToEntity();
  final _refreshEntity = _RefreshEntity();

  Authentication mapResponseToEntity(AuthenticationResponse from) =>
      _responseToEntity.map(from);

  Authentication mapRefreshEntity(AuthenticationResponse from) =>
      _refreshEntity.map(from);
}

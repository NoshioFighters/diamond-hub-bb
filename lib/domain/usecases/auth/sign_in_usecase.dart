import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import '../../../core/error/failures.dart';

/// サインインユースケース
@injectable
class SignInUseCase {
  const SignInUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
  }) async {
    return await _repository.signIn(
      email: email,
      password: password,
    );
  }
}



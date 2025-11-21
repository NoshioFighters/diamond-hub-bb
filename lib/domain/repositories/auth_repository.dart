import 'package:dartz/dartz.dart';

import '../entities/user_entity.dart';
import '../../core/error/failures.dart';

/// 認証リポジトリインターフェース
abstract class AuthRepository {
  /// サインイン
  Future<Either<Failure, UserEntity>> signIn({
    required String email,
    required String password,
  });

  /// サインアップ
  Future<Either<Failure, UserEntity>> signUp({
    required String email,
    required String password,
    String? name,
  });

  /// サインアウト
  Future<Either<Failure, void>> signOut();

  /// 現在のユーザーを取得
  Future<Either<Failure, UserEntity?>> getCurrentUser();

  /// パスワードリセット
  Future<Either<Failure, void>> resetPassword(String email);
}


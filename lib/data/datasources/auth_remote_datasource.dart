import '../../domain/entities/user_entity.dart';

/// 認証リモートデータソース（Firebase）
abstract class AuthRemoteDataSource {
  Future<UserEntity> signIn({
    required String email,
    required String password,
  });

  Future<UserEntity> signUp({
    required String email,
    required String password,
    String? name,
  });

  Future<void> signOut();

  Future<UserEntity?> getCurrentUser();

  Future<void> resetPassword(String email);
}



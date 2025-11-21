import '../../domain/entities/user_entity.dart';

/// 認証ローカルデータソース（キャッシュ）
abstract class AuthLocalDataSource {
  Future<void> cacheUser(UserEntity user);

  Future<UserEntity?> getCachedUser();

  Future<void> clearCache();
}



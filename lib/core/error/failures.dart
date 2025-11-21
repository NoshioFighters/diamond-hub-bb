import 'package:equatable/equatable.dart';

/// エラーベースクラス
abstract class Failure extends Equatable {
  const Failure([this.message]);

  final String? message;

  @override
  List<Object?> get props => [message];
}

/// サーバーエラー
class ServerFailure extends Failure {
  const ServerFailure([super.message]);
}

/// ネットワークエラー
class NetworkFailure extends Failure {
  const NetworkFailure([super.message]);
}

/// 認証エラー
class AuthFailure extends Failure {
  const AuthFailure([super.message]);
}

/// キャッシュエラー
class CacheFailure extends Failure {
  const CacheFailure([super.message]);
}

/// バリデーションエラー
class ValidationFailure extends Failure {
  const ValidationFailure([super.message]);
}



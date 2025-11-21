import 'package:equatable/equatable.dart';

/// ユーザーエンティティ
class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.email,
    this.name,
    this.photoUrl,
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String email;
  final String? name;
  final String? photoUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        photoUrl,
        createdAt,
        updatedAt,
      ];
}



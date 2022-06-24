
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'user_repository.dart';

/// The provider for accessing the [userRepository]
final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(ref.read);
});

class UserRepositoryImpl extends UserRepository {
  UserRepository(this._reader);

  final Reader _reader;

  // TODO: override and implement your methods here
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '{{name.snakeCase()}}_repository.dart';

/// The provider for accessing the [{{name.camelCase()}}Repository]
final {{name.camelCase()}}RepositoryProvider = Provider<{{name.pascalCase()}}Repository>((ref) {
  return {{name.pascalCase()}}RepositoryImpl(ref.read);
});

class {{name.pascalCase()}}RepositoryImpl extends {{name.pascalCase()}}Repository {
  {{name.pascalCase()}}Repository(this._reader);

  final Reader _reader;

  // TODO: override and implement your methods here
}
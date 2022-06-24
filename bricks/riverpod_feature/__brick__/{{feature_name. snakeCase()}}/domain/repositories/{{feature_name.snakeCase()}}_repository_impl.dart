
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '{{feature_name.snakeCase()}}_repository.dart';

/// The provider for accessing the [{{feature_name.camelCase()}}Repository]
final {{feature_name.camelCase()}}RepositoryProvider = Provider<{{feature_name.pascalCase()}}Repository>((ref) {
  return {{feature_name.pascalCase()}}RepositoryImpl(ref.read);
});

class {{feature_name.pascalCase()}}RepositoryImpl extends {{feature_name.pascalCase()}}Repository {
  {{feature_name.pascalCase()}}Repository(this._reader);

  final Reader _reader;

  // TODO: override and implement your methods here
}
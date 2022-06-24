
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '{{featureName.snakeCase()}}_repository.dart';

/// The provider for accessing the [{{featureName.pascalCase()}}Repository]
final {{featureName.camelCase()}}RepositoryProvider = Provider<{{featureName.pascalCase()}}Repository>((ref) {
  return {{featureName.pascalCase()}}RepositoryImpl(ref.read);
});

class {{featureName.pascalCase()}}RepositoryImpl extends {{featureName.pascalCase()}}Repository {
  {{featureName.pascalCase()}}Repository(this._reader);

  final Reader _reader;

  // TODO: override and implement your methods here
}
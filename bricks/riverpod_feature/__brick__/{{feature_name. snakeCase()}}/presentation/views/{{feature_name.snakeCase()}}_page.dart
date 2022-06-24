
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class {{name.pascalCase()}}Page extends ConsumerWidget {
  const {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  {{#route_name}}
  static const routeName = '/{{name.camelCase()}}';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(),
    );
  }
}
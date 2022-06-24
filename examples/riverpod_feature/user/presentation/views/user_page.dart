
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class {{feature_name.pascalCase()}}Page extends ConsumerWidget {
  const {{feature_name.pascalCase()}}Page({Key? key}) : super(key: key);

  {{#route_name}}
  static const routeName = '/{{feature_name.camelCase()}}';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(),
    );
  }
}
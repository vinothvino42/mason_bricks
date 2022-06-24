import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class {{featureName.pascalCase()}}Page extends ConsumerWidget {
  const {{featureName.pascalCase()}}Page({Key? key}) : super(key: key);

  {{#routable}}
  static PageRoute route() {
    return MaterialPageRoute(builder: (context) => const {{#pascalCase}}{{featureName}}{{/pascalCase}}());
  }
  {{/routable}}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(),
    );
  }
}
//TODO: In this file, you can write all your routes

import 'package:flutter/material.dart';

/// [ViewRouter] - A view router class which holds all the routes used in the app
/// It can be used to navigating routes using `pushNamed` method of `Navigator` class
class ViewRouter {
  ViewRouter._();

  static const {{feature_name.camelCase()}} = '/{{feature_name.camelCase()}}';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case {{feature_name.camelCase()}}:
        return MaterialPageRoute(builder: (_) => const {{feature_name.pascalCase()}}Page());
    }
  }
}

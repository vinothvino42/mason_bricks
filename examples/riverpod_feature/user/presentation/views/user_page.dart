import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPage extends ConsumerWidget {
  const UserPage({Key? key}) : super(key: key);

  
  static PageRoute route() {
    return MaterialPageRoute(builder: (context) => const User());
  }
  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../go_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.goNamed(RoutePaths.insideHome.name),
          child: const Text('Go to Inside Home'),
        ),
      ),
    );
  }
}

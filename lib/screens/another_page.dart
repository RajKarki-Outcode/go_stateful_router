import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../go_routes.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AddOn')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.goNamed(RoutePaths.insideAnother.name),
          child: const Text('Go to Inside AddOn'),
        ),
      ),
    );
  }
}

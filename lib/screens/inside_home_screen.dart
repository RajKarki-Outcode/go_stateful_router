import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InsideHomeScreen extends StatelessWidget {
  const InsideHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inside Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.pop(),
          child: const Text('Close'),
        ),
      ),
    );
  }
}

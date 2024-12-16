import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_project/bottom_nav_bar_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.child});
  final StatefulNavigationShell child;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
        centerTitle: true,
        backgroundColor: Colors.redAccent.withOpacity(0.2),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavBarWidget(
        child: widget.child,
      ),
    );
  }
}

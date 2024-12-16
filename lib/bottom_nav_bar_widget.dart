import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:new_project/nav_bar_cubit/nav_bar_cubit.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key, required this.child});
  final StatefulNavigationShell child;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: child.currentIndex,
      onTap: _onItemTapped,
      selectedIconTheme: const IconThemeData(color: Colors.red),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
      ],
    );
  }

  void _onItemTapped(int index) {
    child.goBranch(index, initialLocation: index == child.currentIndex);
  }
}

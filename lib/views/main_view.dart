import 'package:flutter/material.dart';
import 'package:seunghojang/views/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.abc),
                label: Text('hello'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.abc),
                label: Text('hello'),
              ),
            ],
          ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [HomeView()],
            ),
          )
        ],
      ),
    );
  }
}

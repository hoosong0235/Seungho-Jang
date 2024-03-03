import 'package:flutter/material.dart';
import 'package:seunghojang/views/main_view.dart';

void main() {
  runApp(const SeunghoJang());
}

class SeunghoJang extends StatelessWidget {
  const SeunghoJang({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeunghoJang',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MainView(),
    );
  }
}

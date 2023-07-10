import 'package:flutter/material.dart';

import 'features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const MoiveApp());
}

class MoiveApp extends StatelessWidget {
  const MoiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}

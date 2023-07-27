import 'package:flutter/material.dart';

import 'Screens/Start/spalsh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CES',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';

import 'welcome_screen.dart';

void main() => runApp(const WorkLinkApp());

class WorkLinkApp extends StatelessWidget {
  const WorkLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorkLink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF176B55)),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

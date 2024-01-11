import 'package:flutter/material.dart';
import 'package:untitled/screens/choose_social_media_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dem&Mux Automation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChooseSocialMediaScreen(),
    );
  }
}

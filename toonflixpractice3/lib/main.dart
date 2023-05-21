import 'package:flutter/material.dart';
import 'package:toonflixpractice3/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFE7626C),
          onPrimary: Color(0xFFE7626C),
          secondary: Color(0xFFE7626C),
          onSecondary: Color(0xFFE7626C),
          error: Color(0xFFE7626C),
          onError: Color(0xFFE7626C),
          background: Color(0xFFE7626C),
          onBackground: Color(0xFFE7626C),
          surface: Color(0xFFE7626C),
          onSurface: Color(0xFFE7626C),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

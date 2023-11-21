import 'package:flutter/material.dart';
import 'package:flutter_app1/home.dart';

void main() => runApp(const MyDemoApp());

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white70,
          backgroundColor: Colors.black54,
          elevation: 4.0,
          titleSpacing: 1.0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/home": (context) => const HomeScreen(),
      },
    );
  }
}

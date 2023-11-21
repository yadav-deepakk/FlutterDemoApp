import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/login.dart';
import 'package:flutter_app1/pages/home.dart';

void main() => runApp(const MyDemoApp());

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // brightness: Brightness.dark,
          primarySwatch: Colors.cyan,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            elevation: 2.0,
            titleSpacing: 1.0,
            foregroundColor: Colors.white70,
          ),
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeScreen(),
          "/home": (context) => const HomeScreen(),
          "/Login": (context) => const LoginScreen(),
        });
  }
}

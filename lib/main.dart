import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/home.dart';
import 'package:flutter_app1/pages/login.dart';
import 'package:flutter_app1/routes/available_routes.dart';
import 'package:flutter_app1/widgets/app_themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo App',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      initialRoute: AvailableRoutes.root,
      routes: {
        AvailableRoutes.home: (context) => const HomeScreen(),
        AvailableRoutes.login: (context) => const LoginScreen(),
      },
    );
  }
}

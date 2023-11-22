import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/home.dart';
import 'package:flutter_app1/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          titleSpacing: 2.0,
          elevation: 4.0,
          shadowColor: Colors.blueGrey,
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.roboto(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
          headlineLarge: GoogleFonts.roboto(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.roboto(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.lato(fontSize: 18.0),
          bodySmall: GoogleFonts.lato(fontSize: 16.0),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => const HomeScreen(),
        "/home": (context) => const HomeScreen(),
        "/login": (context) => LoginScreen(),
      },
    );
  }
}

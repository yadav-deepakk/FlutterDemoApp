import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/home.dart';
import 'package:flutter_app1/pages/login.dart';
import 'package:flutter_app1/routes/available_routes.dart';
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

        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 112, 194, 232),
          foregroundColor: Colors.white,
          centerTitle: true,
          titleSpacing: 2.0,
          elevation: 2.0,
          shadowColor: Colors.blueGrey,
        ),

        drawerTheme: const DrawerThemeData(
          backgroundColor: Color.fromARGB(255, 112, 194, 232),
          shape: BeveledRectangleBorder(),
          elevation: 4.0,
        ),

        // Plain Readable Fonts - openSans, roboto, lato, notoSans, poppins, quicksand, sourceSansPro
        // Cursive Fonts - dancingScript, greatVibes, pacifico, italianno, parisienne, cookie
        textTheme: TextTheme(
          titleLarge: GoogleFonts.dancingScript(
            fontSize: 36.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.0,
          ),
          headlineLarge: GoogleFonts.parisienne(
            fontSize: 30.0,
            fontWeight: FontWeight.normal,
          ),
          bodyLarge: GoogleFonts.roboto(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.lato(fontSize: 18.0),
          bodySmall: GoogleFonts.lato(fontSize: 16.0),
        ),
      ),
      initialRoute: AvailableRoutes.root,
      routes: {
        AvailableRoutes.home: (context) => const HomeScreen(),
        AvailableRoutes.login: (context) => const LoginScreen(),
      },
    );
  }
}

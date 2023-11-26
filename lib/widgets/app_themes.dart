import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  // dark
  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        drawerTheme: const DrawerThemeData(
          shape: BeveledRectangleBorder(),
        ),
      );

  // light
  static ThemeData get lightTheme => ThemeData(
        primaryColor: Colors.lightBlue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          titleSpacing: 2.0,
        ),

        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.blue,
          shape: BeveledRectangleBorder(),
          elevation: 2.0,
        ),

        // Plain Readable Fonts - openSans, roboto, lato, notoSans, poppins, quicksand, sourceSansPro
        // Cursive Fonts - dancingScript, greatVibes, pacifico, italianno, parisienne, cookie
        textTheme: TextTheme(
          titleLarge: GoogleFonts.dancingScript(
            fontSize: 32.0,
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
      );
}

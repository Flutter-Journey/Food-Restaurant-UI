import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy_ui/utils/app_colors.dart';

ThemeData appPrimaryTheme() => ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      cardColor: Colors.white,
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: appColor,
        contentTextStyle: TextStyle(color: Colors.white),
        actionTextColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        color: Colors.white,
        elevation: 1.0,
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      dividerColor: Colors.grey[300],
      dividerTheme: const DividerThemeData(thickness: 0.5),
      tabBarTheme: TabBarTheme(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: GoogleFonts.montserrat(
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: GoogleFonts.montserrat(
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      textTheme: TextTheme(
        displaySmall: GoogleFonts.montserrat(
          fontSize: 42.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headlineMedium: GoogleFonts.montserrat(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headlineSmall: GoogleFonts.montserrat(
          fontSize: 24.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        titleLarge: GoogleFonts.montserrat(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        titleMedium: GoogleFonts.montserrat(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        titleSmall: GoogleFonts.montserrat(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.montserrat(
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.montserrat(
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        labelLarge: GoogleFonts.montserrat(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );

import 'package:application_1/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:application_1/pages/home_page.dart';
import 'package:application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            toolbarTextStyle: Theme.of(context).textTheme.headlineMedium,
            titleTextStyle: Theme.of(context).textTheme.headlineSmall),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        MyRouts.homeRoute: (context) => HomePage(),
        MyRouts.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

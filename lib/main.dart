import 'package:career_start/pages/login_page.dart';
import 'package:career_start/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red,
          fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/login",
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoutes : (context) => HomePage(),
        MyRoutes.loginRoutes : (context) => LoginPage(),
      },
    );
  }
}


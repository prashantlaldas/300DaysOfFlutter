import 'package:career_start/pages/login_page.dart';
import 'package:career_start/utils/routes.dart';
import 'package:career_start/widgets/themes.dart';
import 'package:flutter/material.dart';


import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoutes : (context) => HomePage(),
        MyRoutes.loginRoutes : (context) => LoginPage(),
      },
    );
  }
}


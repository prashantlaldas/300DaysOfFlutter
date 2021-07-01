
import 'package:career_start/widgets/drawer.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {

 final int days = 30;
 final String name = "prashant";
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),),
        body: Center (
          child:  Container(
            child: Text ("Welcome Prashant $days $name"),
          ),
        ),
        drawer: MyDrawer(),
    );
  }
}

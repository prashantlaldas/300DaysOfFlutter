import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
final imageUrl = "https://images.newindianexpress.com/uploads/user/imagelibrary/2020/7/7/w1200X800/Kiara_Advani.jpg";
    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          children: [
            DrawerHeader
              (
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader
                  (
              margin: EdgeInsets.zero,
                  accountName: Text("Kiara lal"),
                  accountEmail: Text("kiara@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
            ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.house,color: Colors.white,),
              title: Text ("Home",style: (TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.asterisk_circle_fill,color: Colors.white,),
              title: Text ("Profile",style: (TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.hammer,color: Colors.white,),
              title: Text ("Email",style: (TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),textScaleFactor: 1.2,),
            )
          ],
        ),
      ),
    );
  }
}

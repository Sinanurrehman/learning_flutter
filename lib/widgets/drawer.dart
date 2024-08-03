import "package:application_1/pages/home_page.dart";
import "package:application_1/pages/login_page.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://media.licdn.com/dms/image/D4D03AQHzyGvlrHtt5w/profile-displayphoto-shrink_400_400/0/1686826449580?e=1722470400&v=beta&t=3NX4miLtEJbMj9TMZ98Y9aheE8L786NuaTxzY-eEv18";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 247, 78, 6)),
              margin: EdgeInsets.zero,
              accountName: Text("Sinan Ur Rehman"),
              accountEmail: Text("sinanurrehman@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.list_bullet_indent),
            title: Text(
              "Products",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.star_lefthalf_fill),
            title: Text(
              "Help & Feedback",
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}

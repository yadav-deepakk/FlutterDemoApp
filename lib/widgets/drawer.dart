import 'package:flutter/material.dart';

class CatalogueDrawer extends StatelessWidget {
  const CatalogueDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // user info
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.transparent),
              margin: EdgeInsets.zero,
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "D",
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ),
              accountName: Text(
                "UserName",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              accountEmail: Text(
                "accountEmail@email.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),

          // options
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text("Home", style: TextStyle(color: Colors.white)),
            selected: true,
            selectedTileColor: Colors.white10,
            splashColor: Colors.white24,
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: const Text("Profile", style: TextStyle(color: Colors.white)),
            selected: false,
            selectedTileColor: Colors.white10,
            splashColor: Colors.white24,
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.mail, color: Colors.white),
            title: const Text("Email", style: TextStyle(color: Colors.white)),
            selected: false,
            selectedTileColor: Colors.white10,
            splashColor: Colors.white24,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

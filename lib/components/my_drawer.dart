import 'package:flutter/material.dart';
import 'package:food_app/components/my_tile_drawer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Icon(
                Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            MyDrawerTile(
              text: "HOME",
              icon: Icons.home,
              onTap: () {},
            ),
            MyDrawerTile(
              text: "SETTINGS",
              icon: Icons.settings,
              onTap: () {},
            ),

            const Spacer(),

            MyDrawerTile(
            text: "LOGOUT",
            icon: Icons.logout,
            onTap: () {},
          )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_drawer_tile.dart';
import 'package:fooddelivery/login.dart';
import 'package:fooddelivery/services/auth/auth_service.dart';
import 'package:fooddelivery/services/auth/login_or_register.dart';
import 'package:fooddelivery/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void logout(BuildContext context) async {
    final authService = AuthService();
    await authService.signOut();

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const LoginOrRegister()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage('lib/images/foodlogo.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: "S E T T I N G",
            icon: Icons.settings,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MyDrawerTile(
              text: "L O G O U T",
              icon: Icons.logout,
              onTap: () => logout(context),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:animated_login/Commandes/CommandeHome.dart';
import 'package:animated_login/ProductModule/products.dart';
import 'package:animated_login/utilisateur.dart/utilisateurs.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../../constant.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/user.gif",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.home_2,
            title: "Profil",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.menu,
            title: "Produits",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Products()),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.user_2,
            title: "Utilisateurs",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Utilisateurs()),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.chat,
            title: "Commandes",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Commandes()),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.logout,
            title: "Deconnexion",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

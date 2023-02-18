import 'dart:convert';

import 'package:animated_login/Commandes/CommandeHome.dart';
import 'package:animated_login/ProductModule/products.dart';
import 'package:animated_login/presentation/login_screen.dart';
import 'package:animated_login/utilisateur.dart/utilisateurs.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:http/http.dart' as http;


import '../../constant.dart';

Future<Object> connectToDolibarr(String username, String password) async {
    var session = SessionManager();
    http.Response response = await http.Client().post(
      Uri.parse('https://dolimobil.with6.dolicloud.com/api/index.php/login'),
      
      body: ({
        'login': username,
        'password': password,
      })
    );

    final donnee = json.decode(response.body);

    if (response.statusCode == 200) {
      session.set("islogin", true);
      session.set("name", username);
      session.set("token", donnee['success']['token']);
      //pour la déconnexion
      return true;
    }
    if (response.statusCode == 403) {
      return false;
    }
    await session.set("token", "");
    return false;
}

//Gestion déconnexion

Future<void>logout() async {
  var session = SessionManager();
  await SessionManager().remove('token');
  // Autres tâches de nettoyage si nécessaire
}


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
            onTap: () async {
              logout();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );

            },
            
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

import '/utilisateur.dart/NewUser.dart';
import 'package:flutter/material.dart';

import 'ListCom.dart';
import 'NewCom.dart';

class Commandes extends StatelessWidget {
  const Commandes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Commandes"),
          backgroundColor: Color(0xff250432),
        ),
        body: SizedBox.expand(
            child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff250432))),
                  // ignore: avoid_print
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => const ListCom(
                                  title: 'Liste des commandes',
                                )));
                  },

                  label: const Text(
                    "Liste des commandes",
                    style: TextStyle(fontSize: 20),
                  ),
                  icon: const Icon(Icons.list_rounded),
                ),
                ElevatedButton.icon(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff250432))),
                  // ignore: avoid_print
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => const NewCom()));
                  },
                  label: const Text(
                    "Nouvelle Commande",
                    style: TextStyle(fontSize: 20),
                  ),
                  icon: const Icon(Icons.add_task),
                ),
              ],
            ),
          ),
        )));
  }
}

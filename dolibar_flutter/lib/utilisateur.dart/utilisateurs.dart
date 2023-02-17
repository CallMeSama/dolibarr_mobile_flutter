import 'package:dolibar_flutter/utilisateur.dart/NewUser.dart';
import 'package:flutter/material.dart';

import 'ListUsers.dart';

class Utilisateurs extends StatelessWidget {
  const Utilisateurs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Utilisateurs"),
          backgroundColor: Color(0xff083d18),
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
                          padding: MaterialStatePropertyAll(EdgeInsets.only(
                              top: 20, bottom: 20, left: 30, right: 30)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff083d18))),
                      // ignore: avoid_print
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const ListUsers(
                                      title: 'Liste Users',
                                    )));
                      },

                      label: const Text(
                        "Liste Utilisateurs",
                        style: TextStyle(fontSize: 20),
                      ),
                      icon: const Icon(Icons.list_rounded),
                    ),
                    ElevatedButton.icon(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff083d18))),
                      // ignore: avoid_print
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const NewUser()));
                      },
                      label: const Text(
                        "Nouvel Utilisateur",
                        style: TextStyle(fontSize: 20),
                      ),
                      icon: const Icon(Icons.add_task),
                    ),
                  ]),
            ),
          ),
        ));
  }
}

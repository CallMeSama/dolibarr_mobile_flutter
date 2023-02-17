import 'package:flutter/material.dart';

import 'Liste.dart';

class Users extends StatelessWidget {
  const Users({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("UTILISATEURS"),
        ),
        body: SizedBox.expand(
            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white,
                    Color(0xFF2596BE),
                  ],
                )),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.all(30)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 37, 149, 190))),
                      // ignore: avoid_print
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const MyHomePage(
                                      title: 'Liste des Utilisateurs',
                                    )));
                      },

                      label: const Text(
                        "LISTE DES UTILISATEURS",
                        style: TextStyle(fontSize: 20),
                      ),
                      icon: const Icon(Icons.list_rounded),
                    ),
                    ElevatedButton.icon(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.all(30)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 37, 149, 190))),
                      // ignore: avoid_print
                      onPressed: () {
                        const Text('Nouvel Utilisateur');
                      },
                      label: const Text(
                        "NOUVEL UTILISATEUR",
                        style: TextStyle(fontSize: 20),
                      ),
                      icon: const Icon(Icons.add_task),
                    ),
                  ],
                )))));
  }
}

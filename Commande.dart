import 'package:flutter/material.dart';

import 'Liste.dart';

class Commande extends StatelessWidget {
  const Commande({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Commandes"),
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
                                pageBuilder: (_, __, ___) => ListeCommande()));
                      },

                      label: const Text(
                        "LISTE DES COMMANDES",
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
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => ListeCommande()));
                      },
                      label: const Text(
                        "NOUVELLE COMMANDE",
                        style: TextStyle(fontSize: 20),
                      ),
                      icon: const Icon(Icons.add_task),
                    ),
                  ],
                )))));
  }
}

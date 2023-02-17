import 'package:flutter/material.dart';
import '/ProductModule/ProductForm.dart';

import 'Liste.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PRODUITS"),
          backgroundColor: Color(0xFF6B0B0B),
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
                              MaterialStatePropertyAll(Color(0xFF6B0B0B))),
                      // ignore: avoid_print
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const MyHomePage(
                                      title: 'Liste des Produits',
                                    )));
                      },
                      label: const Text(
                        "LISTE DES PRODUITS",
                        style: TextStyle(fontSize: 20),
                      ),
                      icon: const Icon(Icons.list),
                    ),
                    ElevatedButton.icon(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF6B0B0B))),
                      // ignore: avoid_print
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    const AddProductForm()));
                      },
                      label: const Text(
                        "NOUVEAU PRODUIT",
                        style: TextStyle(fontSize: 20),
                      ),
                      icon: const Icon(Icons.add_task),
                    ),
                  ],
                )))));
  }
}

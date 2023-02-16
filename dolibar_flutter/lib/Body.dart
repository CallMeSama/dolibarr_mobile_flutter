import 'package:dolibar_flutter/login.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Backgound(
        child: Container(
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "DoliMobile",
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 80)),
              SizedBox(
                  child: Stack(children: <Widget>[
                Positioned(child: Image.asset("assets/icon_dolibarr1.png")),
              ])),
              const Padding(padding: EdgeInsets.only(top: 80)),
              const Text(
                "Avec DoliMobile ayez acces a dolibarr avec votre appareil mobile. Appuyer sur 'Get started' pour continuer.",
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              ElevatedButton.icon(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20)),
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromARGB(138, 0, 0, 0))),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const MyLogin()));
                },
                label: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(Icons.start),
              )
            ])));
  }
}

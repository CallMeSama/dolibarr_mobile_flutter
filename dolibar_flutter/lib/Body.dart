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
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Avec DoliMobile ayez acces a dolibarr avec votre appareil mobile. Appuyer sur 'login' pour continuer.",
                style: TextStyle(fontFamily: 'poppins'),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const MyLogin()));
                },
                child: const Text('Login'),
              )
            ])));
  }
}

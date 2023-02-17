import 'package:animated_login/presentation/login_screen.dart';
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
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 28, 85, 136)),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 80)),
              SizedBox(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Image.asset(
                        "assets/images/icon_dolibarr1.png",
                        width: 190,
                        height: 190,
                      ),
                    ),
                  ],
                ),
              ),

              const Padding(padding: EdgeInsets.only(top: 80)),
              const Text(
                "Avec DoliMobile ayez acces a dolibarr avec votre appareil mobile.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              ElevatedButton.icon(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20)),
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromARGB(255, 28, 85, 136))),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const LoginScreen()));
                },
                label: const Text(
                  'Suivant',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
                icon: const Icon(Icons.start),
              )
            ])));
  }
}

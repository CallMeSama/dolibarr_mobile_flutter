//import 'package:dolibar_flutter/login.dart';
import 'package:dolibar_flutter/Commandes/CommandeHome.dart';
import 'package:dolibar_flutter/utilisateur.dart/NewUser.dart';
import 'package:dolibar_flutter/utilisateur.dart/formulaire.dart';
import 'package:dolibar_flutter/utilisateur.dart/utilisateurs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Commandes(),
    );
  }
}

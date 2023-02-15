//import 'package:dolibar_flutter/login.dart';
import 'package:dolibar_flutter/login.dart';
import 'package:dolibar_flutter/utilisateurs.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'NewUser/NewUser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Utilisateurs(),
    );
=======
    return const MaterialApp(home: MyLogin());
>>>>>>> Stashed changes
  }
}

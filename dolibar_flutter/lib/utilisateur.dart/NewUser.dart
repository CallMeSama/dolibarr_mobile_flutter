import 'package:flutter/material.dart';

import 'formulaire.dart';

class NewUser extends StatelessWidget {
  const NewUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nouvel Utilisateur"),
        backgroundColor: Color(0xff083d18),
      ),
      body: Formulaire(),
    );
  }
}

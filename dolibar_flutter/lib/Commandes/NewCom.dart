import 'package:flutter/material.dart';

import 'formulaireCom.dart';

class NewCom extends StatelessWidget {
  const NewCom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nouvelle Commande"),
        backgroundColor: Color(0xff250432),
      ),
      body: const FormulaireCom(),
    );
  }
}

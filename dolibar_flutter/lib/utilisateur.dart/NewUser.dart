import 'package:flutter/material.dart';

import 'formulaire.dart';

class NewUser extends StatelessWidget {
  const NewUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Formulaire(),
    );
  }
}

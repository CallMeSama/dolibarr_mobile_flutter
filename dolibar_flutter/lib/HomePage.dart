import 'package:flutter/material.dart';

import 'Body.dart';

class HomPage extends StatelessWidget {
  const HomPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}

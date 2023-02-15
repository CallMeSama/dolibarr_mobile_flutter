import 'package:flutter/material.dart';

class Backgound extends StatelessWidget {
  final Widget child;
  const Backgound({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/coin_fleur.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/coin_fleur2.png"),
          ),
          child,
        ]));
  }
}

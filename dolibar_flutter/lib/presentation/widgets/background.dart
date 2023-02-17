
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
         Opacity(
            opacity: 0.9, // Modifier l'opacité de l'image
            child: Image.asset(
              "assets/images/images.jpg", // Remplacer avec le chemin de votre image de fond
              height: size.height,
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),  
        
        child,
      ]),
    );
  }
}
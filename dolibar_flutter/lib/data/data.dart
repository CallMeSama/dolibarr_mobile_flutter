import '../constant.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../models/module_model.dart';

final List<Module> module = [
  Module(
      text: "Produits",
      imageUrl: "assets/images/pic/img1.png",
      backImage: "assets/images/box/1.png",
      color: kDarkBlue, textSize: 15),
  Module(
      text: "Utilisateurs",
      imageUrl: "assets/images/pic/img2.png",
      backImage: "assets/images/box/2.png",
      color: kOrange, textSize: 15),
  Module(
      text: "Commandes",
      imageUrl: "assets/images/pic/img3.png",
      backImage: "assets/images/box/3.png",
      color: kGreen, textSize: 15),
];

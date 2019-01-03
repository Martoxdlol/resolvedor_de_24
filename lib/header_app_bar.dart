import 'package:flutter/material.dart';
import 'gradient_black.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBlack("Calculador de 24"),
        
      ],
    );
  }
}
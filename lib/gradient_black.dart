import 'package:flutter/material.dart';

class GradientBlack extends StatelessWidget {
  String title = "Popular";

  GradientBlack(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.white,
          ],
          begin: FractionalOffset(0.5, -0.2),
          end: FractionalOffset(0.8, 1.2),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9, -0.6),

    );
  }

}
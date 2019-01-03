import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = "Navigate";
  TextEditingController controller = TextEditingController();


  ButtonPurple(this.controller,this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(
      onTap: (){
        controller.text = buttonText;
      },
      child: Container(
        margin: EdgeInsets.all(1.0),
        height: 37.0,
        width: 37.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: LinearGradient(colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

}
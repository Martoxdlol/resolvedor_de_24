import 'package:flutter/material.dart';
import 'button_purple.dart';

class ButtonSelector extends StatelessWidget {

  TextEditingController controller = TextEditingController();

  ButtonSelector(this.controller);


  @override
  Widget build(BuildContext context) {

    List buttons1 = <Widget>[];
    List buttons2 = <Widget>[];
    for(int i = 1; i <= 6; i++){
      buttons1.add(ButtonPurple(controller, i.toString()));
      
    }
    for(int i = 7; i <= 12; i++){
      buttons2.add(ButtonPurple(controller, i.toString()));
    }

    // TODO: implement build
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Center(child: 
              Row(
                children: buttons1,
              ),
            ),
            Center(child: 
              Row(
                children: buttons2,
              ),
            ),
          ],
        ),
      )
    );
  }
}
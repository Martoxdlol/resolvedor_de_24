import 'package:flutter/material.dart';

class TextInput extends StatelessWidget{

  TextEditingController controller = TextEditingController();
  String label = "";

  TextInput(this.controller, this.label);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80.0,
      child: TextField(
        style: TextStyle(
          fontSize: 50.0,
          color: Colors.black
        ),
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.grey,
          hintText: label,
        ),
      ),
    );
  }
  
}

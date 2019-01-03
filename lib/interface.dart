import 'calculador.dart';
import 'package:flutter/material.dart';
import 'text_field.dart';
import 'card_selector.dart';
import 'button_purple.dart';
import 'mostrar_resultado.dart';

class Interface extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Interface();
  }

}

class _Interface extends State<Interface> {
  String finalResult = "";

  void handlePress(){
   
    setState(() {
      int num5 = 24;

      if(controller5.text != ""){
        num5 = int.parse(controller5.text);
      }

      finalResult = calculateIt([int.parse(controller1.text),int.parse(controller2.text),int.parse(controller3.text),int.parse(controller4.text)], num5);
    });
    
  }

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            TextInput(controller1, "N1"),
            ButtonSelector(controller1),
          ],),
          Row(children: <Widget>[
            TextInput(controller2, "N2"),
            ButtonSelector(controller2),
          ],),
          Row(children: <Widget>[
            TextInput(controller3, "N3"),
            ButtonSelector(controller3),
          ],),
          Row(children: <Widget>[
            TextInput(controller4, "N4"),
            ButtonSelector(controller4),
          ],),
          Row(children: <Widget>[
              Text(
                "Igual a: ",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              TextInput(controller5, "..."),
              ButtonPurple(controller5, "24"),
            ],
          ),
          Row(children: <Widget>[
            ButtonSelector(controller5),
          ],),
          MostrarResultado(finalResult),
          MaterialButton(
            onPressed: handlePress,
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                "Calcular",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
            color: Colors.grey,
          ),
          Text(""),
          MaterialButton(
            onPressed: (){
              controller1.text = "";
              controller2.text = "";
              controller3.text = "";
              controller4.text = "";
              controller5.text = "";
              setState(() {
                finalResult = "";
              });
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "Borrar",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            color: Colors.red,
          ),
          Text(""),
         ],
        )
      );
  }

}
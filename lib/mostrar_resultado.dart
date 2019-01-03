import 'package:flutter/material.dart';

class MostrarResultado extends StatelessWidget {
  String result = "";
  MostrarResultado(this.result);

  @override
  Widget build(BuildContext context) {
    if(result == ""){
      return ResultText("{RESULTADO}");
    }else{
      if(result != "false"){
        return Container(
          margin: EdgeInsets.all(1.0),
          child: Row(
            children: <Widget>[
              ResultText("!Se puede¡"),



              MaterialButton(
                onPressed: (){
                  _showDialog(context, result);
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    "Ver solución",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
                color: Colors.lightBlue,
              ),


            ],
          ),
        );
      }else{
        return ResultText("Sin solución");
      }
    }
  }
}


class ResultText extends StatelessWidget {
  String text = "";
  ResultText(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25.0,
          
        ),
      ),
    );
  }
}
/*



*/


  void _showDialog(contexto, result) {
    // flutter defined function
    showDialog(
      context: contexto,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Solución"),
          content: new Text(result),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Cerrar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
import 'dart:math' as math;
import 'package:dart2_constant/math.dart' as math_polyfill;
import 'package:math_expressions/math_expressions.dart';
import 'package:trotter/trotter.dart';









List combo(n) {
  var new_aarray = [n[0].toString()+"",n[1].toString()+" ",n[2].toString()+"  ",n[3].toString()+"   "];
  var perms = Permutations(4, new_aarray);
  var r = [];
  for (var perm in perms()) {
    r.add(perm);
  }
  return r;
}



 



double eval(String expString){
  Parser p = new Parser();
  var expression = p.parse("x+"+expString+"");
  ContextModel cm = new ContextModel()..bindVariableName('x', new Number(0.0));
  return expression.evaluate(EvaluationType.REAL, cm);
}


String calculateIt(List arrayDeCuatro, int numeroAIgualar){
  var operations_combo_list = [];
  var operations = ["+","-","*","/"];
  for (int i = 0; i < operations.length; i++) {
    for (int i2 = 0; i2 < operations.length; i2++) {
      for (int i3 = 0; i3 < operations.length; i3++) {
        List new_operation_combo = [];
        new_operation_combo.add(operations[i]);
        new_operation_combo.add(operations[i2]);
        new_operation_combo.add(operations[i3]);
          
        //return new_operation_combo.toString();

        operations_combo_list.add(new_operation_combo);
        
        //return eval("1+1").toString();
      }
    }
  }
  
  var differentOrders = combo(arrayDeCuatro);
  
  //return differentOrders.toString();
  //return operations_combo_list.toString();


  var soluciones = [];

  
  for (var i = 0; i < differentOrders.length; i++) {

    
    var n1 = int.parse(differentOrders[i][0]).toString();
    var n2 = int.parse(differentOrders[i][1]).toString();
    var n3 = int.parse(differentOrders[i][2]).toString();
    var n4 = int.parse(differentOrders[i][3]).toString();

    
    //return n1+" "+n2+" "+n3+" "+n4;


    var results = ["","","","","","","","","",""];

    for (var ie = 0; ie < operations_combo_list.length; ie++) {
      
      var operation_combo = operations_combo_list[ie];

      

      results[0] = ""+n1+operation_combo[0]+n2+operation_combo[1]+n3+operation_combo[2]+n4;

      results[1] = "("+n1+operation_combo[0]+n2+")"+operation_combo[1]+n3+operation_combo[2]+n4;

      results[2] = "("+n1+operation_combo[0]+n2+operation_combo[1]+n3+")"+operation_combo[2]+n4;

      results[3] = "("+n1+operation_combo[0]+n2+")"+operation_combo[1]+"("+n3+operation_combo[2]+n4+")";

      results[4] = "(("+n1+operation_combo[0]+n2+")"+operation_combo[1]+n3+")"+operation_combo[2]+n4;

      results[5] = ""+n1+operation_combo[0]+"("+n2+operation_combo[1]+"("+n3+operation_combo[2]+n4+"))";

      
      

      for (var ii = 0; ii < 6; ii++) {
        var evaluation = eval(results[ii]+"");
        
        
        //return evaluationString.toString();

        if (evaluation.toString() == numeroAIgualar.toDouble().toString()) {
          //console.log(results[ii], "=", numeroAIgualar);
          soluciones.add(results[ii]);
          return results[ii] + " = " + numeroAIgualar.toString();
        }
      }

    }
  //	console.log(result);
  
  }

  var resultStringFinal = "";



  for(int sols = 0; sols < soluciones.length; sols++){
   resultStringFinal += soluciones[sols]+'''
   
   ''';
  }

 





  return "false";
}


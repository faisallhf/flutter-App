import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  //VARIABLES

  String output = "0";
  String expression = "";
  // String output2 = "0";
  // double num1 = 0;
  // double num2 = 0;
  // String operand = "";
  // String result = "";

  buttonPressed(String buttonText) {
    if (buttonText == "AC") {
      output = "0";
      expression = "";
    } else if (buttonText == "=") {
      try {
        expression = expression.replaceAll('x', '*');
        Parser p = Parser();

        Expression exp = p.parse(expression);

        ContextModel contextmodel = ContextModel();

        output = exp.evaluate(EvaluationType.REAL, contextmodel).toString();
        double result = exp.evaluate(EvaluationType.REAL, contextmodel);

        NumberFormat formatter = NumberFormat('0.######');
        output = formatter.format(result);

        expression = output;
      } catch (e) {
        output = "Error";
        expression = "";
      }
    } else {
      expression = expression + buttonText;
      output = expression;
    }
    setState(() {
      output = output;
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: SizedBox(
        height: 70.0,
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              // maximumSize: Size(20, 20),
              side: BorderSide(
                color: Colors.blue,
                width: 2.0,
              ),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              buttonPressed(buttonText);
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            context.goNamed('home_page');
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(
          "Calculator",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 24.0,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Text(
                  output,
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: [
                Row(
                  children: [
                    buildButton("7"),
                    buildButton("8"),
                    buildButton("9"),
                    buildButton("/"),
                  ],
                ),
                Row(
                  children: [
                    buildButton("4"),
                    buildButton("5"),
                    buildButton("6"),
                    buildButton("x"),
                  ],
                ),
                Row(
                  children: [
                    buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
                    buildButton("-"),
                  ],
                ),
                Row(
                  children: [
                    buildButton("."),
                    buildButton("0"),
                    buildButton("00"),
                    buildButton("+"),
                  ],
                ),
                Row(
                  children: [
                    buildButton("AC"),
                    buildButton("="),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




  // void buttonPressed(String buttonText) {
  //   if (buttonText == "AC") {
  //     output = "0";
  //     expression = "";
  //     result = ""; // Clear result on AC
  //   } else if (buttonText == "=") {
  //     try {
  //       expression = expression.replaceAll('x', '*');
  //       Parser p = Parser();
  //       Expression exp = p.parse(expression);
  //       ContextModel contextmodel = ContextModel();
  //       double resultValue = exp.evaluate(EvaluationType.REAL, contextmodel);

  //       NumberFormat formatter = NumberFormat('0.##########');
  //       result = formatter.format(resultValue);

  //       expression = ""; // Clear expression after showing result
  //     } catch (e) {
  //       result = "Error";
  //       expression = "";
  //     }
  //   } else if (buttonText == "Enter") {
  //     // No additional handling needed here
  //   } else {
  //     expression = expression + buttonText;
  //     try {
  //       expression = expression.replaceAll('x', '*');
  //       Parser p = Parser();
  //       Expression exp = p.parse(expression);
  //       ContextModel contextmodel = ContextModel();
  //       double liveResult = exp.evaluate(EvaluationType.REAL, contextmodel);

  //       NumberFormat formatter = NumberFormat('0.##########');
  //       result = formatter.format(liveResult);

  //       output = "$expression\n$result";
  //     } catch (e) {
  //       result = result;
  //       output = "$expression\n$result";
  //     }
  //   }

  //   setState(() {
  //     // Update the state with both expression and result
  //     output = output;
  //   });
  // }








  // buttonPressed(String buttonText) {
  //   if (buttonText == "AC") {
  //     output2 = "0";
  //     num1 = 0;
  //     num2 = 0;
  //     operand = "";
  //   } else if (buttonText == "+" ||
  //       buttonText == "-" ||
  //       buttonText == "x" ||
  //       buttonText == "/") {
  //     num1 = double.parse(output);
  //     operand = buttonText;
  //     output2 = "0";
  //   } else if (buttonText == ".") {
  //     if (output2.contains(".")) {
  //       print("Already Contains a decimal Point");
  //     } else {
  //       output = output + buttonText;
  //     }
  //   } else if (buttonText == "=") {
  //     num2 = double.parse(output);
  //     if (operand == "+") {
  //       output2 = (num1 + num2).toString();
  //     }
  //     if (operand == "-") {
  //       output2 = (num1 - num2).toString();
  //     }
  //     if (operand == "x") {
  //       output2 = (num1 * num2).toString();
  //     }
  //     if (operand == "/") {
  //       output2 = (num1 / num2).toString();
  //     }
  //     num1 = 0;
  //     num2 = 0;
  //     operand = "";
  //   } else {
  //     output2 = output2 + buttonText;
  //   }
  //   print(output2);
  //   setState(() {
  //     output = double.parse(output2).toStringAsFixed(0);
  //   });
  //
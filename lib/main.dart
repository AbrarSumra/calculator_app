import 'package:flutter/material.dart';
import 'package:wscube_calculator/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

/*
class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String display = '';
  double num1 = 0;
  double num2 = 0;
  String operator = "";

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        display = '';
        num1 = 0;
        num2 = 0;
        operator = "";
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == 'x' ||
          buttonText == '/') {
        num1 = double.parse(display);
        operator = buttonText;
        display = '';
      } else if (buttonText == '=') {
        num2 = double.parse(display);
        if (operator == '+') {
          display = (num1 + num2).toString();
        } else if (operator == '-') {
          display = (num1 - num2).toString();
        } else if (operator == 'x') {
          display = (num1 * num2).toString();
        } else if (operator == '/') {
          display = (num1 / num2).toString();
        }
      } else {
        display += buttonText;
      }
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: Text(
              display,
              style: TextStyle(fontSize: 48),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                buildButton('7'),
                buildButton('8'),
                buildButton('9'),
                buildButton('/'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                buildButton('4'),
                buildButton('5'),
                buildButton('6'),
                buildButton('x'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('-'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                buildButton('C'),
                buildButton('0'),
                buildButton('='),
                buildButton('+'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/

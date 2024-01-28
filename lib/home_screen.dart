import 'package:flutter/material.dart';
import 'package:wscube_calculator/button.dart';
import 'package:wscube_calculator/button_grey.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentText = "";
  double no1 = 0;
  double no2 = 0;
  String operator = "";

  final TextEditingController _textEditingController = TextEditingController();

  void updateTextField(String value) {
    setState(() {
      _textEditingController.text += value;
    });
  }

  Widget buildButton(String label) {
    return SizedBox(
      height: 65,
      width: 95,
      child: ElevatedButton(
        onPressed: () => buttonPressed(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade700,
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void buttonPressed(String label) {
    setState(() {
      if (label == "AC") {
        currentText = "";
        no1 = 0;
        no2 = 0;
        operator = "";
      } else if (label == "+" || label == "-" || label == "X" || label == "/") {
        no1 = double.parse(currentText);
        operator = label;
        currentText = "";
      } else if (label == "=") {
        no2 = double.parse(currentText);
        if (operator == "+") {
          currentText = (no1 + no2).toString();
        } else if (operator == "-") {
          currentText = (no1 - no2).toString();
        } else if (operator == "X") {
          currentText = (no1 * no2).toString();
        } else if (operator == "/") {
          currentText = (no1 / no2).toString();
        } else {
          currentText = label;
        }
      } else {
        currentText += label;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                child: Text(
                  currentText,
                  style: const TextStyle(
                    fontSize: 48,
                    color: Colors.red,
                  ),
                ),
              ),
              /*SizedBox(
                child: TextFormField(
                  controller: _textEditingController,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                  ),
                  decoration: InputDecoration(
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: number.toString(),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                    ),
                  ),
                ),
              ),*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton("AC"),
                  buildButton("+/-"),
                  buildButton("%"),
                  buildButton("/"),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("X"),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("-"),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("+"),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton("0"),
                  buildButton("00"),
                  buildButton("."),
                  buildButton("="),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

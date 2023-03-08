import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
      'C',
      'DEL',
      '%',
      '/',
      '7',
      '8',
      '9',
      'X',
      '4',
      '5',
      '6',
      '-',
      '1',
      '2',
      '3',
      '+',
      '0',
      '.',
      'ANS',
      '=',
    ];
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return MyButton(
                        color: Colors.green,
                        textColor: Colors.white,
                        textButton: buttons[index]);
                  } else if (index == 1) {
                    return MyButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        textButton: buttons[index]);
                  } else {
                    return MyButton(
                        color: isOperator(buttons[index])
                            ? Colors.purple
                            : Colors.white,
                        textColor: isOperator(buttons[index])
                            ? Colors.white
                            : Colors.purple,
                        textButton: buttons[index]);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == 'C' ||
        x == 'DEL' ||
        x == '%' ||
        x == '/' ||
        x == 'X' ||
        x == '-' ||
        x == '+' ||
        x == '=') {
      return true;
    }

    return false;
  }
}

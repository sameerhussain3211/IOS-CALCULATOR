import 'package:flutter/material.dart';
import 'package:ios_calculator_flutter/widgets/cal_button.dart';
import 'package:ios_calculator_flutter/widgets/cal_button_twoletter.dart';

class homeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginScreenState();
  }
}

class _loginScreenState extends State<homeScreen> {
  @override
  double counter = 0;
  double num1 = 0;
  String number1 = '';
  String number2 = '';
  double num2 = 0;
  String symbol = '';
  int lengthofcounter = 0;

  void _reset() {
    setState(() {
      counter = 0;
      num1 = 0;
      num2 = 0;
      number1 = '';
      number2 = '';
      symbol = '';
      lengthofcounter = 0;
    });
  }

  void _reset2() {
    // counter = 0;
    num1 = counter;
    number1 = '';
    number2 = '';
    symbol = '';
  }

  void _add() {
    setState(() {
      counter = num1 + num2;
    });
  }

  void _sub() {
    setState(() {
      counter = num1 - num2;
    });
  }

  void _multiply() {
    setState(() {
      counter = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      counter = num1 / num2;
    });
  }

  void percent() {
    setState(() {
      counter = counter / 100;
    });
  }

  void _negation() {
    setState(() {
      counter = counter * -1;
    });
  }

  void _resultShow() {
    setState(() {
      counter = num1 + num2;
    });
  }

  void _refresh() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(243, 0, 0, 0),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  "$counter",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 75,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    width: 75,
                    child: CalButtonTwoLetter(
                        buttonText: "AC",
                        buttonLength: 75,
                        onPressedCallback: () {
                          counter = 0;
                          _reset();
                        },
                        colorButton: Colors.grey.shade400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    width: 75,
                    child: CalButtonTwoLetter(
                        buttonText: "+/-",
                        buttonLength: 75,
                        onPressedCallback: () {
                          _negation();
                        },
                        colorButton: Colors.grey.shade400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    width: 75,
                    child: CalButtonTwoLetter(
                        buttonText: "% ",
                        buttonLength: 75,
                        onPressedCallback: () {
                          percent();
                        },
                        colorButton: Colors.grey.shade400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 75,
                    child: cal_button(
                      buttonText: "÷",
                      buttonLength: 75,
                      color_button: Colors.amber,
                      onPressedCallback: () {
                        symbol = '÷';
                        number1 = number1 + symbol;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 75,
                    child: cal_button(
                      buttonText: "7",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '7';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '7';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "8",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '8';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '8';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "9",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '9';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '9';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "x",
                      buttonLength: 75,
                      color_button: Colors.amber,
                      onPressedCallback: () {
                        symbol = 'x';
                        number1 = number1 + symbol;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "4",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '4';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '4';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "5",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '5';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '5';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "6",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '6';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '6';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "-",
                      buttonLength: 75,
                      color_button: Colors.amber,
                      onPressedCallback: () {
                        symbol = '-';
                        number1 = number1 + symbol;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "1",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '1';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '1';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "2",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '2';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '2';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "3",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '3';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '3';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "+",
                      buttonLength: 75,
                      color_button: Colors.amber,
                      onPressedCallback: () {
                        symbol = '+';
                        number1 = number1 + symbol;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    alignment: Alignment.centerLeft,
                    child: cal_button(
                      buttonText: "0       ",
                      buttonLength: 168,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '0';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '0';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: ".",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {
                        if (number1.endsWith('÷') ||
                            number1.endsWith('+') ||
                            number1.endsWith('x') ||
                            number1.endsWith('-')) {
                          number2 = number2 + '.';
                          num2 = double.parse(number2);
                          counter = double.parse(number2);
                        } else {
                          number1 = number1 + '.';
                          num1 = double.parse(number1);
                          counter = double.parse(number1);
                        }
                        _refresh();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "=",
                      buttonLength: 75,
                      color_button: Colors.amber,
                      onPressedCallback: () {
                        if (symbol == '÷') {
                          counter = num1 / num2;
                        }
                        if (symbol == '+') {
                          counter = num1 + num2;
                        }
                        if (symbol == '-') {
                          counter = num1 - num2;
                        }
                        if (symbol == 'x') {
                          counter = num1 * num2;
                        }
                        _refresh();
                        // number1='';
                        _reset2();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

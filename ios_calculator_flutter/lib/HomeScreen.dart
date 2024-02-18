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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(243, 0, 0, 0),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Colors.green,
            height: 300,
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
                        onPressedCallback: () {},
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
                        onPressedCallback: () {},
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
                        onPressedCallback: () {},
                        colorButton: Colors.grey.shade400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "÷",
                      buttonLength: 75,
                      color_button: Colors.amber,
                      onPressedCallback: () {},
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
                  child: Container(
                    height: 75,
                    child: cal_button(
                      buttonText: "7",
                      buttonLength: 75,
                      color_button: const Color.fromARGB(42, 255, 255, 255),
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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
                      onPressedCallback: () {},
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

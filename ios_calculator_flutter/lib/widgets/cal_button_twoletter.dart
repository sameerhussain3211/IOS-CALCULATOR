import 'package:flutter/material.dart';

class CalButtonTwoLetter extends StatelessWidget {
  final String buttonText;
  final double buttonLength;
  final VoidCallback? onPressedCallback;
  final Color colorButton;

  const CalButtonTwoLetter({
    required this.buttonText,
    required this.buttonLength,
    required this.onPressedCallback,
    required this.colorButton,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedCallback,
      style: ElevatedButton.styleFrom(
        primary: colorButton,
        onPrimary: Colors.white,
        shadowColor: Colors.grey,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(38.0),
        ),
        minimumSize: Size(buttonLength, 50),
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 70.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

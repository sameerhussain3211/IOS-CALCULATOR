import 'package:flutter/material.dart';

class cal_button extends StatelessWidget {
  final String buttonText;
  final double buttonLength;
  final VoidCallback? onPressedCallback;
  final Color color_button;

  const cal_button({
    required this.buttonText,
    required this.buttonLength,
    required this.onPressedCallback,
    required this.color_button,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedCallback,
      style: ElevatedButton.styleFrom(
        primary: color_button,
        onPrimary: Colors.white,
        // shadowColor: Colors.grey,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(38.0),
        ),
        minimumSize: Size(buttonLength, 50),
      ),
      child: Text(
        buttonText,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}

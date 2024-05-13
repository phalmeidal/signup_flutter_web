import 'package:flutter/material.dart';

class PreviousButton extends StatelessWidget {
  final Function onPressed;

  const PreviousButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        fixedSize: MaterialStateProperty.all<Size>(const Size(175, 40)),
      ),
      onPressed: () => onPressed(),
      child: const Text(
        'Anterior',
        style: TextStyle(
            color: Color.fromARGB(255, 12, 101, 173),
            fontWeight: FontWeight.bold,
            fontSize: 13),
      ),
    );
  }
}

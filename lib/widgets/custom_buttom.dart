import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String customName;
  final Icon customIcon;
  final Function onPressed;
  final Color backgroundColor;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.customName,
    required this.customIcon,
    required this.onPressed,
    this.backgroundColor = const Color.fromARGB(255, 12, 101, 173),
    this.borderRadius = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: () {
          onPressed;
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(customName, style: const TextStyle(color: Colors.white)),
            const SizedBox(width: 10),
            customIcon,
          ],
        ),
      ),
    );
  }
}

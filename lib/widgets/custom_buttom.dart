import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String customName;
  final IconData customIcon;
  final Function onPressed;
  final bool isEnabled;

  const CustomButton({
    super.key,
    required this.customName,
    required this.customIcon,
    required this.onPressed,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) return Colors.grey;
              return const Color.fromARGB(255, 12, 101, 173);
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        onPressed: isEnabled ? () => onPressed() : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              customName,
              style: TextStyle(color: isEnabled ? Colors.white : const Color.fromARGB(255, 56, 56, 56), fontWeight: FontWeight.bold, fontSize: 13),
            ),
            const SizedBox(width: 10),
            Icon(
              customIcon,
              color: isEnabled ? Colors.white : const Color.fromARGB(255, 56, 56, 56),
              size: 20,
              weight: 1,
            ),
          ],
        ),
      ),
    );
  }
}

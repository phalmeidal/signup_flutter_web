import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final String title;

  const CustomCheckbox({super.key, required this.title});

  @override
  CustomCheckboxState createState() => CustomCheckboxState();
}

class CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  void toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCheckbox,
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            hoverColor: Colors.transparent,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: const Color.fromARGB(255, 12, 101, 173),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return Colors.transparent;
              },
            ),
            onChanged: (value) {
              toggleCheckbox();
            },
          ),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String fieldName;
  final String? optionalText;
  final String? placeholder; // New parameter for placeholder

  const CustomTextFormField(
      {Key? key, required this.fieldName, this.optionalText, this.placeholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 45,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(120, 238, 238, 238),
              hintText: placeholder,
              hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(75, 0, 0, 0),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(75, 0, 0, 0), width: 0.5),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            optionalText ?? '',
            style: const TextStyle(
                fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

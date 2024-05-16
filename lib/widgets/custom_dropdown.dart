import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String fieldName;
  final String? optionalText;
  final String? placeholder;
  final List<String> items;

  const CustomDropdown({
    Key? key,
    required this.fieldName,
    this.optionalText,
    this.placeholder,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 45,
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(120, 238, 238, 238),
              hintText: placeholder,
              hintStyle: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w400),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(75, 0, 0, 0),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(75, 0, 0, 0), width: 0.5),
              ),
            ),
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Selecione o $fieldName';
              }
              return null;
            },
            onChanged: (String? value) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: Text(
            optionalText ?? '',
            style: const TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

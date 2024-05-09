import 'package:flutter/material.dart';

class GenderRadio extends StatefulWidget {
  const GenderRadio({super.key});

  @override
  _GenderRadioState createState() => _GenderRadioState();
}

class _GenderRadioState extends State<GenderRadio> {
  String selectedGender = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Gênero',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ...Gender.values.map((gender) => _buildRadioOption(gender)).toList(),
      ],
    );
  }

  Widget _buildRadioOption(Gender gender) {
    return Row(
      children: [
        Transform.scale(
          scale: 0.9,
          child: Radio<String>(
            value: gender.name,
            groupValue: selectedGender,
            onChanged: (value) {
              setState(() {
                selectedGender = value!;
              });
            },
            activeColor: Colors.blue,
            hoverColor: Colors.transparent,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedGender = gender.name;
            });
          },
          child: Text(
            gender == Gender.Other ? 'Prefiro não informar' : gender.name,
            style: const TextStyle(fontSize: 13),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}

enum Gender { Masculino, Feminino, Other }

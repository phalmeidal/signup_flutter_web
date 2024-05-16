import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final String title, description, radioTitle1, radioTitle2;
  final String? radioDescription1, radioDescription2;

  const CustomRadio({
    super.key,
    required this.title,
    required this.description,
    required this.radioTitle1,
    required this.radioTitle2,
    this.radioDescription1,
    this.radioDescription2,
  });

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  int _selectedRadio = 0;

  void _setSelectedRadio(int val) {
    setState(() {
      _selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 5),
          _buildDescription(),
          const SizedBox(height: 10),
          _buildRadioButtons(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      widget.title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildDescription() {
    return Text(
      widget.description,
      style: const TextStyle(color: Color.fromARGB(255, 190, 190, 190)),
    );
  }

  Widget _buildRadioButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: _buildRadioButton(
            title: widget.radioTitle1,
            description: widget.radioDescription1,
            value: 1,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: _buildRadioButton(
            title: widget.radioTitle2,
            description: widget.radioDescription2,
            value: 2,
          ),
        ),
      ],
    );
  }

  Widget _buildRadioButton({
    required String title,
    required String? description,
    required int value,
  }) {
    return GestureDetector(
      onTap: () {
        _setSelectedRadio(value);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: _selectedRadio == value ? Colors.blue : Colors.grey,
            width: _selectedRadio == value ? 1.0 : 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: value,
                        activeColor: Colors.blue,
                        overlayColor: MaterialStateProperty.all<Color>(Colors.white),
                        groupValue: _selectedRadio,
                        onChanged: (val) {
                          _setSelectedRadio(val!);
                        },
                      ),
                      Text(
                        title,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  if (description != null)
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 190, 190, 190),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

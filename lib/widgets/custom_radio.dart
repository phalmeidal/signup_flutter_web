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
  CustomRadioState createState() => CustomRadioState();
}

class CustomRadioState extends State<CustomRadio> {
  late int selectedRadio;

  CustomRadioState() {
    selectedRadio = 0;
  }

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            widget.description,
            style: const TextStyle(
              color: Color.fromARGB(255, 190, 190, 190),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setSelectedRadio(1);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedRadio == 1 ? Colors.blue : Colors.grey,
                        width: selectedRadio == 1 ? 1.0 : 0.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  activeColor: Colors.blue,
                                  groupValue: selectedRadio,
                                  onChanged: (val) {
                                    setSelectedRadio(val!);
                                  },
                                ),
                                Text(
                                  widget.radioTitle1,
                                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            if (widget.radioDescription1 != null)
                              Padding(
                                padding: const EdgeInsets.only(left: 32.0),
                                child: Text(
                                  widget.radioDescription1!,
                                  style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 190, 190, 190)),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setSelectedRadio(2);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedRadio == 2 ? Colors.blue : Colors.grey,
                        width: selectedRadio == 2 ? 1.0 : 0.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  activeColor: Colors.blue,
                                  hoverColor: Colors.transparent,
                                  groupValue: selectedRadio,
                                  onChanged: (val) {
                                    setSelectedRadio(val!);
                                  },
                                ),
                                Text(
                                  widget.radioTitle2,
                                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            if (widget.radioDescription2 != null)
                              Padding(
                                padding: const EdgeInsets.only(left: 32.0),
                                child: Text(
                                  widget.radioDescription2!,
                                  style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 190, 190, 190)),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

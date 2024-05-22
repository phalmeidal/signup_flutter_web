import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  final String fieldName;
  final String? optionalText;
  final String? placeholder;
  final bool isPassword;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;

  final RxBool _obscureText;
  CustomTextFormField({
    Key? key,
    required this.fieldName,
    this.optionalText,
    this.placeholder,
    this.isPassword = false,
    this.controller,
    this.focusNode,
    this.nextFocusNode,
  })  : _obscureText = (isPassword ? true.obs : false.obs),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 11.5),
          child: Text(fieldName, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        ),
        Theme(
          data: ThemeData(
            primaryColor: const Color.fromARGB(255, 12, 101, 173),
            textSelectionTheme: const TextSelectionThemeData(selectionColor: Color.fromARGB(80, 12, 100, 173)),
            colorScheme: const ColorScheme.light(primary: Color.fromARGB(255, 12, 101, 173)),
          ),
          child: Obx(() => SizedBox(
                height: 45,
                child: TextFormField(
                  controller: controller,
                  obscureText: _obscureText.value,
                  cursorColor: const Color.fromARGB(255, 12, 101, 173),
                  focusNode: focusNode,
                  textInputAction: nextFocusNode != null ? TextInputAction.next : TextInputAction.done,
                  onFieldSubmitted: (_) {
                    if (nextFocusNode != null) {
                      FocusScope.of(context).requestFocus(nextFocusNode);
                    } else {
                      FocusScope.of(context).unfocus();
                    }
                  },
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(75, 0, 0, 0), width: 0.5),
                    ),
                    suffixIcon: isPassword
                        ? IconButton(
                            icon: Icon(
                              _obscureText.value ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                              color: const Color.fromARGB(255, 12, 101, 173),
                            ),
                            onPressed: () {
                              _obscureText.value = !_obscureText.value;
                            },
                          )
                        : null,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Digite o $fieldName';
                    }
                    return null;
                  },
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 11.5),
          child: Text(
            optionalText ?? '',
            style: const TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

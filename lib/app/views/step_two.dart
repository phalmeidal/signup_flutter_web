import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';

class StepTwoPage extends StatelessWidget {
  final SignupController _signupController = Get.put(SignupController());
  StepTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(const Color.fromARGB(255, 245, 245, 245).value),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
              CustomButton(
                customName: 'Próximo',
                customIcon: Icons.arrow_forward_rounded,
                onPressed: () {
                  _signupController.nextStep();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

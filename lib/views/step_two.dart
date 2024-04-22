import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/views/step_three.dart';
import 'package:sign_up_page/widgets/signup_progress.dart';

import '../widgets/custom_app_bar.dart';

class StepTwoPage extends StatelessWidget {
  const StepTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          onBack: () => Get.back(),
          onCancel: () => Get.back(),
        ),
        backgroundColor: Color(const Color.fromARGB(255, 245, 245, 245).value),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 60,
                child: const Text(
                  'Cadastro nova empresa',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SignupProgress(
                currentStep: 2,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Get.to(const StepThreePage());
                },
                child: const Text('Next'),
              ),
            ],
          ),
        )));
  }
}

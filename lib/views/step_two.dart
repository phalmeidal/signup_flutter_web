import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/views/step_three.dart';
import 'package:sign_up_page/widgets/signup_progress.dart';

class StepTwoPage extends StatelessWidget {
  const StepTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step Two'),
      ),
      body: Column(
        children: [
          const SignupProgress(
            currentStep: 2,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const StepThreePage());
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}

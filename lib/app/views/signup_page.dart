import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/app/views/step_four/step_four.dart';
import 'package:sign_up_page/app/views/step_one/step_one.dart';
import 'package:sign_up_page/app/views/step_three/step_three.dart';
import 'package:sign_up_page/app/views/step_two/step_two.dart';
import 'package:sign_up_page/widgets/custom_app_bar.dart';
import 'package:sign_up_page/widgets/navigation_buttons.dart';
import 'package:sign_up_page/widgets/signup_progress.dart';

class SignupPage extends StatelessWidget {
  final SignupController controller = Get.put(SignupController());

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBack: () => controller.previousStep(),
        onCancel: () => Get.back(),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
                  'Cadastro nova empresa',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Obx(() {
                return SignupProgress(
                  currentStep: controller.currentStep.value + 1,
                );
              }),
              const SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    child: _buildStepPage(context),
                  ),
                  const NavigationButtons(),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepPage(context) {
    return Obx(() {
      final stepPages = {
        0: StepOnePage(),
        1: StepTwoPage(),
        2: StepThreePage(),
        3: StepFourPage(),
      };

      return IndexedStack(
        index: controller.currentStep.value,
        children: stepPages.values.toList(),
      );
    });
  }
}

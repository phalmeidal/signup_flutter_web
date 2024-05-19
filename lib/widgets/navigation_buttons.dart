import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/widgets/button_previous.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.find<SignupController>();

    return Obx(() {
      bool isNextButtonEnabled;
      switch (controller.currentStep.value) {
        case 0:
          isNextButtonEnabled = controller.isNextButtonStepOneEnabled.value;
          break;
        case 1:
          isNextButtonEnabled = controller.isNextButtonStepTwoEnabled.value;
          break;
        case 2:
          isNextButtonEnabled = controller.isNextButtonStepThreeEnabled.value;
          break;
        case 3:
          isNextButtonEnabled = controller.isNextButtonStepFourEnabled.value;
          break;
        default:
          isNextButtonEnabled = false;
          break;
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (controller.currentStep.value > 0)
            PreviousButton(
              onPressed: () {
                controller.previousStep();
              },
            ),
          CustomButton(
            customName: controller.currentStep > 2 ? 'Finalizar' : 'Próximo',
            customIcon: Icons.arrow_forward,
            onPressed: controller.currentStep > 2
                ? () {
                    // Lógica do step 4
                  }
                : controller.nextStep,
            isEnabled: isNextButtonEnabled,
          ),
        ],
      );
    });
  }
}

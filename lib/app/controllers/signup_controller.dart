import 'package:get/get.dart';

class SignupController extends GetxController {
  var currentStep = 0.obs;
  var isNextButtonStepOneEnabled = false.obs;
  var isNextButtonStepTwoEnabled = false.obs;
  var isNextButtonStepThreeEnabled = false.obs;
  var isNextButtonStepFourEnabled = false.obs;

  void nextStep() {
    if (currentStep.value < 3) {
      currentStep.value++;
    }
  }

  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
    }
  }

  void setCurrentStep(int step) {
    if (step >= 0 && step <= 3) {
      currentStep.value = step;
    }
  }

  void nextButtonStepOneState(bool isEnabled) {
    isNextButtonStepOneEnabled.value = isEnabled;
  }

  void nextButtonStepTwoState(bool isEnabled) {
    isNextButtonStepTwoEnabled.value = isEnabled;
  }

  void nextButtonStepThreeState(bool isEnabled) {
    isNextButtonStepThreeEnabled.value = isEnabled;
  }

  void nextButtonStepFourState(bool isEnabled) {
    isNextButtonStepFourEnabled.value = isEnabled;
  }
}

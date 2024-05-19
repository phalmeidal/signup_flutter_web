import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';

class StepTwoController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  var emails = <String>[].obs;
  var isNextButtonEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    ever(emails, (_) => validateEmails());
  }

  void addEmail() {
    if (emailController.text.isNotEmpty) {
      emails.add(emailController.text);
      emailController.clear();
    }
  }

  void removeEmail(String email) {
    emails.remove(email);
  }

  void validateEmails() {
    isNextButtonEnabled.value = emails.isNotEmpty;
    Get.find<SignupController>()
        .isNextButtonStepTwoEnabled(isNextButtonEnabled.value);
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}

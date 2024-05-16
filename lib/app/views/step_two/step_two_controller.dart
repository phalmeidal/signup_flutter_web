import 'package:get/get.dart';
import 'package:flutter/material.dart';

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
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}

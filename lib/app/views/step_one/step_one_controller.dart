import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';

class StepOneController extends GetxController {
  final SignupController _signupController = Get.find();

  final cnpjController = TextEditingController();
  final razaoSocialController = TextEditingController();
  final nomeFantasiaController = TextEditingController();
  final atividadePrincipalController = TextEditingController();
  final codigoExternoController = TextEditingController();

  var cnpj = ''.obs;
  var razaoSocial = ''.obs;
  var nomeFantasia = ''.obs;
  var atividadePrincipal = ''.obs;
  var codigoExterno = ''.obs;

  var isButtonEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();

    cnpjController.addListener(_validateFields);
    razaoSocialController.addListener(_validateFields);
    nomeFantasiaController.addListener(_validateFields);
    atividadePrincipalController.addListener(_validateFields);
    codigoExternoController.addListener(_validateFields);
    _validateFields();
  }

  void _validateFields() {
    cnpj.value = cnpjController.text;
    razaoSocial.value = razaoSocialController.text;
    nomeFantasia.value = nomeFantasiaController.text;
    atividadePrincipal.value = atividadePrincipalController.text;
    codigoExterno.value = codigoExternoController.text;

    isButtonEnabled.value = cnpj.isNotEmpty &&
        razaoSocial.isNotEmpty &&
        nomeFantasia.isNotEmpty &&
        atividadePrincipal.isNotEmpty &&
        codigoExterno.isNotEmpty;
    Get.find<SignupController>()
        .isNextButtonStepOneEnabled(isButtonEnabled.value);
  }

  void nextStep() {
    if (isButtonEnabled.value) {
      _signupController.nextStep();
    } else {
      Get.snackbar(
        'Erro',
        'Todos os campos são obrigatórios.',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  void onClose() {
    cnpjController.dispose();
    razaoSocialController.dispose();
    nomeFantasiaController.dispose();
    atividadePrincipalController.dispose();
    codigoExternoController.dispose();
    super.onClose();
  }
}

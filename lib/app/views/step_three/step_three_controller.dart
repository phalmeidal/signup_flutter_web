import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';

class StepThreeController extends GetxController {
  final SignupController _signupController = Get.find();

  final cepController = TextEditingController();
  final logradouroController = TextEditingController();
  final numeroController = TextEditingController();
  final bairroController = TextEditingController();
  final complementoController = TextEditingController();

  var cep = ''.obs;
  var logradouro = ''.obs;
  var numero = ''.obs;
  var bairro = ''.obs;
  var complemento = ''.obs;

  var filialSelection = 0.obs;
  var kitSelection = 0.obs;
  var faturamentoSelection = 0.obs;

  var isNextButtonEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();

    cepController.addListener(_validateFields);
    logradouroController.addListener(_validateFields);
    numeroController.addListener(_validateFields);
    bairroController.addListener(_validateFields);
    complementoController.addListener(_validateFields);
  }

  void _validateFields() {
    cep.value = cepController.text;
    logradouro.value = logradouroController.text;
    numero.value = numeroController.text;
    bairro.value = bairroController.text;
    complemento.value = complementoController.text;

    isNextButtonEnabled.value = cep.isNotEmpty && logradouro.isNotEmpty && numero.isNotEmpty && bairro.isNotEmpty && complemento.isNotEmpty && filialSelection.value != 0 && kitSelection.value != 0 && faturamentoSelection.value != 0;

    _signupController.isNextButtonStepThreeEnabled(isNextButtonEnabled.value);
  }

  void updateFilialSelection(int value) {
    filialSelection.value = value;
    _validateFields();
  }

  void updateKitSelection(int value) {
    kitSelection.value = value;
    _validateFields();
  }

  void updateFaturamentoSelection(int value) {
    faturamentoSelection.value = value;
    _validateFields();
  }

  void nextStep() {
    if (isNextButtonEnabled.value) {
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
    cepController.dispose();
    logradouroController.dispose();
    numeroController.dispose();
    bairroController.dispose();
    complementoController.dispose();
    super.onClose();
  }
}

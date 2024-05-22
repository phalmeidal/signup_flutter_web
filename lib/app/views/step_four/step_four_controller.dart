import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';

class StepFourController extends GetxController {
  final SignupController _signupController = Get.find();

  final cpfController = TextEditingController();
  final nomeController = TextEditingController();
  final cargoController = TextEditingController();
  final telefoneController = TextEditingController();
  final celularController = TextEditingController();
  final emailController = TextEditingController();
  final confirmEmailController = TextEditingController();
  final usuarioController = TextEditingController();
  final identificadorController = TextEditingController();

  var cpf = ''.obs;
  var nome = ''.obs;
  var cargo = ''.obs;
  var telefone = ''.obs;
  var celular = ''.obs;
  var email = ''.obs;
  var confirmEmail = ''.obs;
  var usuario = ''.obs;
  var identificador = ''.obs;

  var isNextButtonEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();

    cpfController.addListener(_validateFields);
    nomeController.addListener(_validateFields);
    cargoController.addListener(_validateFields);
    telefoneController.addListener(_validateFields);
    celularController.addListener(_validateFields);
    emailController.addListener(_validateFields);
    confirmEmailController.addListener(_validateFields);
    usuarioController.addListener(_validateFields);
    identificadorController.addListener(_validateFields);
  }

  void _validateFields() {
    cpf.value = cpfController.text;
    nome.value = nomeController.text;
    cargo.value = cargoController.text;
    telefone.value = telefoneController.text;
    celular.value = celularController.text;
    email.value = emailController.text;
    confirmEmail.value = confirmEmailController.text;
    usuario.value = usuarioController.text;
    identificador.value = identificadorController.text;

    isNextButtonEnabled.value = cpf.isNotEmpty && nome.isNotEmpty && cargo.isNotEmpty && telefone.isNotEmpty && celular.isNotEmpty && email.isNotEmpty && confirmEmail.isNotEmpty && usuario.isNotEmpty && identificador.isNotEmpty;

    _signupController.isNextButtonStepFourEnabled(isNextButtonEnabled.value);
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
    cpfController.dispose();
    nomeController.dispose();
    cargoController.dispose();
    telefoneController.dispose();
    celularController.dispose();
    emailController.dispose();
    confirmEmailController.dispose();
    usuarioController.dispose();
    identificadorController.dispose();
    super.onClose();
  }
}

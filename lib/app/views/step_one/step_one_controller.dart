import 'package:get/get.dart';

class StepOneController extends GetxController {
  RxString cnpj = ''.obs;
  RxString razaoSocial = ''.obs;
  RxString nomeFantasia = ''.obs;
  RxString atividadePrincipal = ''.obs;
  RxString codigoExterno = ''.obs;

  void updateCNPJ(String value) {
    cnpj.value = value;
  }

  void updateRazaoSocial(String value) {
    razaoSocial.value = value;
  }

  void updateNomeFantasia(String value) {
    nomeFantasia.value = value;
  }

  void updateAtividadePrincipal(String value) {
    atividadePrincipal.value = value;
  }

  void updateCodigoExterno(String value) {
    codigoExterno.value = value;
  }
}

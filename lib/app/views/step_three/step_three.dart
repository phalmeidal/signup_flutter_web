import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/views/step_three/step_three_controller.dart';
import 'package:sign_up_page/widgets/custom_checkbox.dart';
import 'package:sign_up_page/widgets/custom_dropdown.dart';
import 'package:sign_up_page/widgets/custom_radio.dart';
import 'package:sign_up_page/widgets/custom_text_form_field.dart';

class StepThreePage extends StatelessWidget {
  final StepThreeController _stepThreeController =
      Get.put(StepThreeController());

  final bool? entregarCorrespondencia;
  final bool? usarOutroEndereco;

  StepThreePage(
      {super.key, this.entregarCorrespondencia, this.usarOutroEndereco});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: Center(
          child: Column(
        children: [
          Card(
            surfaceTintColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(75, 0, 0, 0),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Dados comerciais',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                          color: Color.fromARGB(75, 0, 0, 0), indent: 10),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                  fieldName: 'CEP',
                                  optionalText: 'Digite apenas numeros',
                                  placeholder: 'Digite o CEP da sua empresa',
                                  controller:
                                      _stepThreeController.cepController,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                  fieldName: 'Logradouro',
                                  placeholder: 'Rua, avenida, loteamento',
                                  controller:
                                      _stepThreeController.logradouroController,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                  fieldName: 'Número',
                                  placeholder: 'Ex: 143',
                                  controller:
                                      _stepThreeController.numeroController,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                  fieldName: 'Bairro',
                                  placeholder: 'Digite o bairro da sua empresa',
                                  controller:
                                      _stepThreeController.bairroController,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                  fieldName: 'Complemento',
                                  placeholder:
                                      'Ex: Próximo a padaria do Seu João',
                                  controller: _stepThreeController
                                      .complementoController,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomDropdown(
                                  fieldName: 'Estados',
                                  items: [],
                                  placeholder: 'Selecione o estado',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomDropdown(
                                  fieldName: 'Cidade',
                                  items: ['e', 'w'],
                                  placeholder: 'Selecione a cidade',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          CustomCheckbox(
                            title: 'Entregar correspondência neste endereço',
                          ),
                          SizedBox(width: 50),
                          CustomCheckbox(
                            title: 'Usar outro endereço para correspondência',
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const CustomRadio(
                        title: 'Filiais',
                        description: 'A empressa possui outras',
                        radioTitle1: 'Não',
                        radioDescription1: 'Não possui filiais',
                        radioTitle2: 'Sim',
                        radioDescription2: 'E quero fazer a gestão delas',
                      ),
                      const CustomRadio(
                        title: 'Kits e correspondências',
                        description:
                            'Para qual endereço devemos enviar os kits e correspondência?',
                        radioTitle1: 'Enviar para o endereço cadastrado',
                        radioTitle2: 'Enviar para o endereço das viliais',
                      ),
                      const CustomRadio(
                        title: 'Faturamento',
                        description: 'Por onde será feito o faturamento?',
                        radioTitle1: 'Por empresa',
                        radioDescription1:
                            'Cobrança de todas as filiais em uma fatura só',
                        radioTitle2: 'Por filial',
                        radioDescription2:
                            'Cobrança das filiais por faturas individuais',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

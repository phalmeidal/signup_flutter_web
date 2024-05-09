import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/widgets/button_previous.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';
import 'package:sign_up_page/widgets/custom_checkbox.dart';
import 'package:sign_up_page/widgets/custom_dropdown.dart';
import 'package:sign_up_page/widgets/custom_radio.dart';
import 'package:sign_up_page/widgets/custom_text_form_field.dart';

class StepThreePage extends StatelessWidget {
  final SignupController _signupController = Get.put(SignupController());

  final bool? entregarCorrespondencia;
  final bool? usarOutroEndereco;

  StepThreePage({super.key, this.entregarCorrespondencia, this.usarOutroEndereco});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(const Color.fromARGB(255, 245, 245, 245).value),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Column(
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
                        width: constraints.maxWidth * 0.7,
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Dados comerciais',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(color: Color.fromARGB(75, 0, 0, 0), indent: 10),
                                SizedBox(height: 10),
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            fieldName: 'Logradouro',
                                            placeholder: 'Rua, avenida, loteamento',
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            fieldName: 'Número',
                                            placeholder: 'Ex: 143',
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
                                          CustomTextFormField(fieldName: 'Bairro', placeholder: 'Digite o bairro da sua empresa'),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            fieldName: 'Complemento',
                                            placeholder: 'Ex: Próximo a padaria do Seu João',
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
                                Row(
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
                                CustomRadio(
                                  title: 'Filiais',
                                  description: 'A empressa possui outras',
                                  radioTitle1: 'Não',
                                  radioDescription1: 'Não possui filiais',
                                  radioTitle2: 'Sim',
                                  radioDescription2: 'E quero fazer a gestão delas',
                                ),
                                CustomRadio(
                                  title: 'Kits e correspondências',
                                  description: 'Para qual endereço devemos enviar os kits e correspondência?',
                                  radioTitle1: 'Enviar para o endereço cadastrado',
                                  radioTitle2: 'Enviar para o endereço das viliais',
                                ),
                                CustomRadio(
                                  title: 'Faturamento',
                                  description: 'Por onde será feito o faturamento?',
                                  radioTitle1: 'Por empresa',
                                  radioDescription1: 'Cobrança de todas as filiais em uma fatura só',
                                  radioTitle2: 'Por filial',
                                  radioDescription2: 'Cobrança das filiais por faturas individuais',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: constraints.maxWidth * 0.15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          PreviousButton(
                            onPressed: () {
                              _signupController.previousStep();
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomButton(
                            customName: 'Próximo',
                            customIcon: Icons.arrow_forward_rounded,
                            onPressed: () {
                              _signupController.nextStep();
                            },
                            isEnabled: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/widgets/button_previous.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';
import 'package:sign_up_page/widgets/custom_date_field.dart';
import 'package:sign_up_page/widgets/custom_text_form_field.dart';
import 'package:sign_up_page/widgets/gender_radio.dart';

class StepFourPage extends StatelessWidget {
  final SignupController _signupController = Get.put(SignupController());
  StepFourPage({super.key});

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
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                const Text(
                                  'Dados do usuário master',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Divider(color: Color.fromARGB(75, 0, 0, 0), indent: 10),
                                const SizedBox(height: 10),
                                const Text(
                                  'Dados pessoais e profissionais',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            fieldName: 'CPF',
                                            optionalText: 'Digite apenas numeros',
                                            placeholder: 'Digite seu CPF',
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            fieldName: 'Nome completo',
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
                                          CustomDateField(
                                            fieldName: 'Data de nascimento',
                                            placeholder: 'Selecione sua data de nascimento',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const GenderRadio(),
                                const Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(fieldName: 'Cargo', placeholder: 'Digite o cargo'),
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
                                            fieldName: 'Telefone comercial',
                                            placeholder: 'Digite o número com DDD',
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
                                            fieldName: 'Telefone celular',
                                            placeholder: 'Digite o número com DDD',
                                            optionalText: 'Você receberá um código de confirmação via SMS',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CustomTextFormField(
                                        fieldName: 'E-mail',
                                        placeholder: 'exemplo@email.com.br',
                                        optionalText: 'Você receberá um código de confirmação nesse e-mail',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomTextFormField(
                                        fieldName: 'Confirmar e-mail',
                                        placeholder: 'exemplo@email.com.br',
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Informações de acesso ao sistema',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextFormField(fieldName: 'Usuário', placeholder: 'Digite um e-mail'),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: CustomTextFormField(
                                        fieldName: 'Identificador',
                                        placeholder: '8 primeiros números do CNPJ',
                                        optionalText: 'Digite apenas números',
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextFormField(
                                        fieldName: 'Senha',
                                        placeholder: 'Digite uma senha',
                                        optionalText: 'Mínimo de 8 dígitos',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomTextFormField(
                                        fieldName: 'Confirmar senha',
                                        placeholder: 'Digite a senha novamente',
                                        optionalText: 'Mínimo de 8 dígitos',
                                      ),
                                    ),
                                  ],
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
                            customName: 'Finalizar',
                            customIcon: Icons.arrow_forward_rounded,
                            onPressed: () {
                              _signupController.nextStep();
                            },
                            isEnabled: false,
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';

import '../../../widgets/custom_text_form_field.dart';

class StepOnePage extends StatelessWidget {
  final SignupController _signupController = Get.put(SignupController());
  StepOnePage({super.key});

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
                                  'Dados da empresa',
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
                                            fieldName: 'CNPJ',
                                            optionalText: 'Digite apenas numeros',
                                            placeholder: 'Digite seu CNPJ',
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
                                          CustomTextFormField(
                                            fieldName: 'Razão social',
                                            placeholder: 'Digite a razão social',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(fieldName: 'Nome fantasia', optionalText: 'Se não possuir, repetir a razão social. Abrevie se necessário.', placeholder: 'Digite o nome fantasia'),
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
                                            fieldName: 'Atividade principal',
                                            optionalText: 'Digite apenas números',
                                            placeholder: 'Digite a atividade principal',
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
                                          CustomTextFormField(fieldName: 'Código externo', placeholder: 'Digite o código externo'),
                                        ],
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
                      child: CustomButton(
                        customName: 'Próximo',
                        customIcon: Icons.arrow_forward_rounded,
                        onPressed: () {
                          _signupController.nextStep();
                        },
                        isEnabled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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

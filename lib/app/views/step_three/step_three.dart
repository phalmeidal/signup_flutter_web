import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';
import 'package:sign_up_page/widgets/custom_text_form_field.dart';

class StepThreePage extends StatelessWidget {
  final SignupController _signupController = Get.put(SignupController());
  StepThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(const Color.fromARGB(255, 245, 245, 245).value),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
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
                                  Divider(
                                      color: Color.fromARGB(75, 0, 0, 0),
                                      indent: 10),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomTextFormField(
                                              fieldName: 'CEP',
                                              optionalText:
                                                  'Digite apenas numeros',
                                              placeholder:
                                                  'Digite o CEP da sua empresa',
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomTextFormField(
                                              fieldName: 'Logradouro',
                                              placeholder:
                                                  'Rua, avenida, loteamento',
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomTextFormField(
                                                fieldName: 'Bairro',
                                                placeholder:
                                                    'Digite o bairro da sua empresa'),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomTextFormField(
                                              fieldName: 'Complemento',
                                              placeholder:
                                                  'Ex: Próximo a padaria do Seu João',
                                            ),
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
                      CustomButton(
                        customName: 'Próximo',
                        customIcon: Icons.arrow_forward_rounded,
                        onPressed: () {
                          _signupController.nextStep();
                        },
                        isEnabled: true,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

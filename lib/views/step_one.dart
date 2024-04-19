import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/views/step_two.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/signup_progress.dart';

class StepOnePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  StepOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBack: () => Get.back(),
        onCancel: () => Get.back(),
      ),
      backgroundColor: Color(const Color.fromARGB(255, 245, 245, 245).value),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 60,
                child: const Text(
                  'Cadastro nova empresa',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SignupProgress(
                currentStep: 1,
              ),
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
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Form(
                              key: _formKey,
                              child: const Column(
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
                                                fieldName: 'CNPJ',
                                                optionalText:
                                                    'Digite apenas numeros',
                                                placeholder: 'Digite seu CNPJ'),
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
                                              fieldName: 'Razão social',
                                              placeholder:
                                                  'Digite a razão social',
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomTextFormField(
                                                fieldName: 'Nome fantasia',
                                                optionalText:
                                                    'Se não possuir, repetir a razão social. Abrevie se necessário.',
                                                placeholder:
                                                    'Digite o nome fantasia'),
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
                                              fieldName: 'Atividade principal',
                                              optionalText:
                                                  'Digite apenas números',
                                              placeholder:
                                                  'Digite a atividade principal',
                                            ),
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
                                                fieldName: 'Código externo',
                                                placeholder:
                                                    'Digite o código externo'),
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
                          customIcon: const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                            size: 15,
                            weight: 1,
                          ),
                          onPressed: () {
                            Get.to(const StepTwoPage());
                          }),
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

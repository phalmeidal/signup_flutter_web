import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/app/views/step_two/step_two_controller.dart';
import 'package:sign_up_page/widgets/button_previous.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';
import 'package:sign_up_page/widgets/custom_text_form_field.dart';

class StepTwoPage extends StatelessWidget {
  final StepTwoController _stepTwoController = Get.put(StepTwoController());
  final SignupController _signupController = Get.find();

  StepTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(const Color.fromARGB(255, 245, 245, 245).value),
      body: Column(
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
                                'E-mails do contrato',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Divider(color: Color.fromARGB(75, 0, 0, 0), indent: 10),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 250, 250, 250),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.info_outline_rounded,
                                        color: Color.fromARGB(255, 126, 126, 126),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          'Os e-mails informados serão utilizados para envio de faturas, cobranças, avisos sobre movimentações de funcionários e outros comunicados referentes a este contrato.',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color.fromARGB(255, 126, 126, 126),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      controller: _stepTwoController.emailController,
                                      fieldName: 'E-mail',
                                      placeholder: 'Digite um e-mail para adicionar',
                                      optionalText: 'É necessário informar ao menos 1 (um) e-mail.',
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: CustomButton(
                                      customName: 'Adicionar',
                                      customIcon: Icons.add,
                                      onPressed: _stepTwoController.addEmail,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Obx(
                                () => Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  children: _stepTwoController.emails
                                      .map((email) => IntrinsicWidth(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: const Color.fromARGB(88, 228, 228, 228),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      email,
                                                      style: const TextStyle(fontSize: 12),
                                                    ),
                                                    const SizedBox(width: 5),
                                                    GestureDetector(
                                                      onTap: () => _stepTwoController.removeEmail(email),
                                                      child: const Icon(
                                                        Icons.close_rounded,
                                                        color: Color.fromARGB(255, 12, 101, 173),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                ),
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
                        const SizedBox(width: 10),
                        Obx(
                          () => CustomButton(
                            customName: 'Próximo',
                            customIcon: Icons.arrow_forward_rounded,
                            onPressed: () {
                              _signupController.nextStep();
                            },
                            isEnabled: _stepTwoController.isNextButtonEnabled.value,
                          ),
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
    );
  }
}

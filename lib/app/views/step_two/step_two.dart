import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/widgets/custom_buttom.dart';
import 'package:sign_up_page/widgets/custom_text_form_field.dart';

class StepTwoPage extends StatelessWidget {
  final SignupController _signupController = Get.put(SignupController());
  StepTwoPage({super.key});

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
                                  const Divider(
                                      color: Color.fromARGB(75, 0, 0, 0),
                                      indent: 10),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 192, 192, 192),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(
                                          8.0), // Ajuste este valor para o espaço desejado
                                      child: Row(
                                        children: [
                                          Icon(Icons.info_outline_rounded,
                                              color: Color.fromARGB(
                                                  255, 44, 44, 44)),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Text(
                                              'Os e-mails informados serão utilizados para envio de faturas, cobranças, avisos sobre movimentações de funcionários e outros comunicados referentes a este contrato.',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: CustomTextFormField(
                                          fieldName: 'E-mail',
                                          placeholder:
                                              'Digite um e-mail para adicionar',
                                          optionalText:
                                              'É necessário informar ao menos 1 (um) e-mail.',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      CustomButton(
                                        customName: 'Adicionar',
                                        customIcon: Icons.add,
                                        onPressed: () {},
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

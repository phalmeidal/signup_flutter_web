import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/views/step_one/step_one_controller.dart';
import '../../../widgets/custom_text_form_field.dart';

class StepOnePage extends StatelessWidget {
  final StepOneController _stepOneController = Get.put(StepOneController());

  StepOnePage({super.key});

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
                          'Dados da empresa',
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
                                    fieldName: 'CNPJ',
                                    optionalText: 'Digite apenas numeros',
                                    placeholder: 'Digite seu CNPJ',
                                    controller:
                                        _stepOneController.cnpjController,
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
                                    fieldName: 'Razão social',
                                    placeholder: 'Digite a razão social',
                                    controller: _stepOneController
                                        .razaoSocialController,
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
                                  CustomTextFormField(
                                    fieldName: 'Nome fantasia',
                                    optionalText:
                                        'Se não possuir, repetir a razão social. Abrevie se necessário.',
                                    placeholder: 'Digite o nome fantasia',
                                    controller: _stepOneController
                                        .nomeFantasiaController,
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
                                    fieldName: 'Atividade principal',
                                    optionalText: 'Digite apenas números',
                                    placeholder: 'Digite a atividade principal',
                                    controller: _stepOneController
                                        .atividadePrincipalController,
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
                                    fieldName: 'Código externo',
                                    placeholder: 'Digite o código externo',
                                    controller: _stepOneController
                                        .codigoExternoController,
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
          ],
        ),
      ),
    );
  }
}

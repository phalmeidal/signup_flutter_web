import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/controllers/signup_controller.dart';
import 'package:sign_up_page/app/views/step_four/step_four.dart';
import 'package:sign_up_page/app/views/step_one/step_one.dart';
import 'package:sign_up_page/app/views/step_three/step_three.dart';
import 'package:sign_up_page/app/views/step_two/step_two.dart';
import 'package:sign_up_page/widgets/custom_app_bar.dart';
import 'package:sign_up_page/widgets/signup_progress.dart';

class SignupPage extends StatelessWidget {
  final SignupController controller = Get.put(SignupController());

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          onBack: () => controller.previousStep(),
          onCancel: () => Get.back(),
        ),
        backgroundColor: Color(const Color.fromARGB(255, 245, 245, 245).value),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(builder: (context, constraints) {
              bool enableScroll = constraints.maxHeight < 600;
              return enableScroll
                  ? SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height),
                        child: Column(
                          children: [
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
                            Obx(() {
                              return SignupProgress(
                                currentStep: controller.currentStep.value + 1,
                              );
                            }),
                            Flexible(
                              child: Obx(() {
                                switch (controller.currentStep.value) {
                                  case 0:
                                    return StepOnePage();
                                  case 1:
                                    return StepTwoPage();
                                  case 2:
                                    return StepThreePage();
                                  case 3:
                                    return StepFourPage();
                                  default:
                                    return StepOnePage();
                                }
                              }),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height),
                      child: Column(
                        children: [
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
                          Obx(() {
                            return SignupProgress(
                              currentStep: controller.currentStep.value + 1,
                            );
                          }),
                          Flexible(
                            child: Obx(() {
                              switch (controller.currentStep.value) {
                                case 0:
                                  return StepOnePage();
                                case 1:
                                  return StepTwoPage();
                                case 2:
                                  return StepThreePage();
                                case 3:
                                  return StepFourPage();
                                default:
                                  return StepOnePage();
                              }
                            }),
                          ),
                        ],
                      ),
                    );
            }),
          ),
        ));
  }
}

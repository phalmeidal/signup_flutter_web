import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/views/step_one.dart';

class StepFourPage extends StatelessWidget {
  const StepFourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step Four'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(StepOnePage());
          },
          child: const Text('Finish'),
        ),
      ),
    );
  }
}

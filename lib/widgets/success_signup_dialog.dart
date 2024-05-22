import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/views/login_page.dart';

class SuccessSignupDialog extends StatelessWidget {
  const SuccessSignupDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      child: SizedBox(
        width: 450,
        height: 450,
        child: AlertDialog(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          content: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 170,
                  width: 170,
                  child: Image.network('../assets/images/success_signup.png'),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Empresa cadastrada com sucesso!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Acesse sua conta e comece a melhorar a experiencia de gerenciamento da sua empresa',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 12, 101, 173),
                  ),
                  elevation: WidgetStateProperty.all(0),
                  minimumSize: WidgetStateProperty.all(const Size(350, 50)),
                  overlayColor: WidgetStateColor.resolveWith((states) => Colors.transparent),
                ),
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
                child: const Text(
                  'Ir para login',
                  style: TextStyle(
                    color: Colors.white,
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

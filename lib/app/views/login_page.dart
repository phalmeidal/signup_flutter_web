import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/views/signup_page.dart';
import 'package:sign_up_page/widgets/custom_text_form_field.dart';
import 'package:sign_up_page/widgets/success_signup_dialog.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Image.asset('assets/login_image.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 225, right: 225),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      child: Image.asset(
                        '../assets/images/logo-crednosso.png',
                        width: 170,
                        height: 170,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Login empresa',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Preencha os campos abaixo para acessar a conta da sua empresa',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomTextFormField(
                      fieldName: 'Usuário',
                      placeholder: 'exemplo@email.com',
                    ),
                    CustomTextFormField(
                      fieldName: 'Identificador',
                      placeholder: 'Digite os 8 primeiros números do CNPJ',
                      optionalText: 'Digite apenas números',
                    ),
                    CustomTextFormField(
                      fieldName: 'Senha',
                      placeholder: 'Digite sua senha',
                      isPassword: true,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 12, 101, 173),
                        ),
                        elevation: MaterialStateProperty.all(0),
                        minimumSize:
                            MaterialStateProperty.all(const Size(350, 50)),
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                      ),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const SuccessSignupDialog();
                          },
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: const Text(
                        'Esquci minha senha',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 12, 101, 173),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Divider(
                        color: Color.fromARGB(75, 0, 0, 0), indent: 10),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => SignupPage());
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        minimumSize:
                            MaterialStateProperty.all(const Size(350, 50)),
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                        side: MaterialStateBorderSide.resolveWith((states) =>
                            const BorderSide(
                                color: Color.fromARGB(255, 12, 101, 173),
                                width: 1)),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: const Text(
                        'Cadastrar nova empresa',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 12, 101, 173),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

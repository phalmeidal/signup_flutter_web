import 'package:flutter/material.dart';

class SignupProgress extends StatelessWidget {
  final int currentStep;

  const SignupProgress({Key? key, required this.currentStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        width: constraints.maxWidth * 0.7,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color.fromARGB(75, 0, 0, 0), width: 0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: _buildStep(1, "Dados da empresa", currentStep),
            ),
            _buildDivider(context),
            _buildStep(2, "E-mails do contrato", currentStep),
            _buildDivider(context),
            _buildStep(3, "Dados comerciais", currentStep),
            _buildDivider(context),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: _buildStep(4, "Dados do usuário master", currentStep),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildStep(int stepNumber, String stepName, int currentStep) {
    final isActive = stepNumber == currentStep;
    final isCompleted = stepNumber < currentStep;

    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: isCompleted
                ? const Color.fromARGB(255, 191, 255, 193)
                : isActive
                    ? const Color.fromARGB(255, 227, 243, 255)
                    : const Color.fromARGB(57, 158, 158, 158),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: isCompleted
                ? const Icon(Icons.check, color: Colors.green, size: 16)
                : Text(
                    stepNumber.toString(),
                    style: TextStyle(
                      color: isActive ? const Color.fromARGB(255, 18, 80, 131) : const Color.fromARGB(255, 158, 158, 158),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
        Text(
          stepName,
          style: TextStyle(
            color: isActive || isCompleted ? Colors.black : const Color.fromARGB(255, 158, 158, 158),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      height: 2.0,
      width: MediaQuery.of(context).size.width * 0.05,
      color: const Color.fromARGB(57, 158, 158, 158),
    );
  }
}

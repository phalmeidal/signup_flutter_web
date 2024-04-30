import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBack;
  final VoidCallback onCancel;

  const CustomAppBar({super.key, required this.onBack, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 18, 80, 131),
              ),
              onPressed: onBack,
              child: const Row(
                children: [
                  Icon(Icons.arrow_back_rounded, size: 20, weight: 50),
                  SizedBox(width: 8),
                  Text('Voltar', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 187, 21, 16),
              ),
              onPressed: onCancel,
              child: const Row(
                children: [
                  Text('Cancelar', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                  Icon(
                    Icons.clear_rounded,
                    size: 25,
                    weight: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

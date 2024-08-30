import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  const TextFormFieldComponent({
    super.key,
    required this.controller,
    required this.labelText,
  });

  final TextEditingController controller;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        validator: (String? value) {
          if (labelText == 'Altura (cm)') {
            if (value!.isEmpty) {
              return 'Altura Obrigatoria';
            }
          } else {
            if (value!.isEmpty) {
              return 'Peso Obrigatorio';
            }
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

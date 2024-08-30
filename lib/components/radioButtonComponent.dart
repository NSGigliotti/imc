import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RadioButtonComponent extends StatelessWidget {
  RadioButtonComponent(
      {super.key, required this.options, required this.selectedOption , required this.setOption});

  final List<String> options;
  int selectedOption;
  final void Function(int?)? setOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Radio(
            value: 1,
            groupValue: selectedOption,
            onChanged: setOption,
          ),
          Text(options[0]),
          Expanded(child: Container()),
          Radio(
            value: 2,
            groupValue: selectedOption,
            onChanged: setOption,
          ),
          Text(options[1]),
        ],
      ),
    );
  }
}

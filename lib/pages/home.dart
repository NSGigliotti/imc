import 'package:flutter/material.dart';
import 'package:imc/components/radioButtonComponent.dart';
import 'package:imc/components/textFormFieldComponent.dart';
import 'package:imc/config/theme.dart';
import 'package:imc/model/pessoaClass.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedOption = 1;

  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  String _result = '';

  void setOption(value) {
    setState(() {
      _selectedOption = value!;
    });
  }

  void setReset() {
    setState(() {
      _weightController.text = '';
      _heightController.text = '';
      _selectedOption = 1;
      _result = '';
    });
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    List<String> options = ['Masculino', 'Feminino'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculo de IMC'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: SizedBox(
              height: 30,
              width: 70,
              child: ElevatedButton(
                  onPressed: setReset,
                  child: const Icon(
                    Icons.cleaning_services_outlined,
                    color: Colors.black,
                  )),
            ),
          )
        ],
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: <Widget>[
            //!---------------------------------------------
            TextFormFieldComponent(
                controller: _heightController,
                labelText: 'Altura (cm)'), //! altura
            //!---------------------------------------------
            TextFormFieldComponent(
                controller: _weightController, labelText: 'Peso (Kg)'), //! peso
            //!---------------------------------------------
            RadioButtonComponent(
                options: options,
                selectedOption: _selectedOption,
                setOption: setOption),
            //!---------------------------------------------
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(_result,
                  textAlign: TextAlign.center, style: AppTheme.resultStyle),
            ),
            //!---------------------------------------------
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  final validade = formKey.currentState?.validate();

                  if (validade!) {
                    PessoaClass pessoa = PessoaClass(
                        weight: double.parse(_weightController.text),
                        height: double.parse(_heightController.text),
                        gender: _selectedOption);

                    setState(() {
                      _result = pessoa.calcIMC();
                    });
                  }
                },
                child: const Text(
                  'Calcular',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'martin',
      'last_name': 'atia',
      'email': 'atia.walter.martin@gmail.com',
      'password': '123456789',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Inputs & Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del Usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Apellido del usuario',
                      formProperty: 'last_name',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: 'Email',
                      hintText: 'Email del usuario',
                      keyBoardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Superuser',
                        child: Text('Superuser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Junior Developer',
                        child: Text('Junior Developer'),
                      ),
                    ],
                    onChanged: (String? value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                      child: SizedBox(
                          width: double.infinity,
                          child: Center(child: const Text('Guardar'))),
                      onPressed: () {
                        //sentencia para desactivar el teclado
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('formulario no valido');
                          return;
                        }
                        //+imprimir valores del formulario
                        print(formValues);
                      })
                ],
              ),
            ),
          ),
        ));
  }
}

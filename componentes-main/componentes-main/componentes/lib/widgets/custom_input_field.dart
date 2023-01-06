import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.icon,
      this.suffixIcon,
      this.keyBoardType,
      this.obscureText = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyBoardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      //print('value: $value');

      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          // hintText: 'Nombre del usuario',
          // labelText: 'Nombre',
          // helperText: 'Solo letras',
          //prefixIcon: Icon(Icons.verified_user_outlined),
          //suffixIcon: Icon(Icons.group_outlined),
          // icon: Icon(Icons.assignment_ind_outlined),
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.green)),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(10),
          //         bottomRight: Radius.circular(10),
          //         topLeft: Radius.circular(10),
          //         topRight: Radius.circular(10)))
          labelText: labelText,
          hintText: hintText,
          helperText: helperText,
          icon: icon == null ? null : Icon(icon),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon)),
    );
  }
}

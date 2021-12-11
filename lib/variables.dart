import 'package:flutter/material.dart';

Color screenBgColor = Colors.black45;

// Title
Widget title(String label) {
  return Text(
    label,
    style: const TextStyle(
        color: Colors.white, fontSize: 40, fontWeight: FontWeight.w800),
  );
}

// ignore: must_be_immutable
class Input extends StatelessWidget {
  TextEditingController controller;
  IconData icon;
  String hintText;
  TextInputType keyboardType;
  String? Function(String?)? validator;
  bool obscureText;

  Input({
    Key? key,
    required this.controller,
    required this.icon,
    required this.hintText,
    required this.keyboardType,
    required this.validator,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(10),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.black45,
          ),
          hintText: hintText,
          hintStyle: textStyle,
        ),
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
        style: textStyle,
      ),
    );
  }
}

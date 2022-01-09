import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Color screenBgColor = Colors.black45;

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

Widget ScoreBox(Color color, String text, String score) {
  return Container(
    width: 30.w,
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(5),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 4.w)),
        Text(score,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 5.w)),
      ],
    ),
  );
}

Widget GoalBox(String text, String goal) {
  return Container(
    width: 100.w / 4,
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: const Color(0xFF2B2F3A), borderRadius: BorderRadius.circular(5)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 4.w)),
        Text(goal,
            style: TextStyle(
                color: const Color(0xFFFC8954),
                fontWeight: FontWeight.bold,
                fontSize: 5.w)),
      ],
    ),
  );
}

// Text
Widget tSpan(BuildContext context, String text) {
  return Container(
    padding: const EdgeInsets.only(left: 5),
    child: Column(
      children: [
        Text(text,
            style: context.theme.textTheme.headline3!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
        const Divider(
          color: Colors.purpleAccent,
          height: 10,
          thickness: 3,
        ),
      ],
    ),
  );
}

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

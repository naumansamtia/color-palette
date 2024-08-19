import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final double? fontSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.color,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 45,
        width: width ?? MediaQuery.of(context).size.width / 1.6,
        decoration: BoxDecoration(
            color: color ?? Colors.white,
            border: Border.all(color: const Color(0xffE8107A), width: 1.5),
            // gradient: LinearGradient(
            //   colors: [Color(0xFFf45d27), Color(0xFFf5851f)],
            // ),
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor ?? const Color(0xffE8107A), fontWeight: FontWeight.bold, fontSize: fontSize ?? 20),
          ),
        ),
      ),
    );
  }
}


class CustomTextFieldForm extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final IconData? icon;
  final List? inputFormatter ;

  // final AutofillHints autofillHints;

  const CustomTextFieldForm({
    super.key,
    required this.labelText,
    required this.controller,
    this.keyboardType,
    this.icon,
    this.obscureText,
    this.inputFormatter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffffffff),
        border: Border.all(color: Color(0xffE8107A), width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: TextField(
          controller: controller,
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Color(0xffE8107A),
              size: 30,
            ),
            border: InputBorder.none,
            labelText: labelText,
          ),
        ),
      ),
    );
  }
}
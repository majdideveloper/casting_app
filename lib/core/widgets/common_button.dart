// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color background;
  final Color colorText;
  final void Function()? onPressed;
  const CommonButton({
    Key? key,
    required this.text,
    required this.background,
    required this.colorText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: colorText, fontSize: 16, fontWeight: FontWeight.w700),
        ));
  }
}

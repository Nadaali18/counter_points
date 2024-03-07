import 'package:flutter/material.dart';

class EvaluatedButtonn extends StatelessWidget {
  const EvaluatedButtonn({
    super.key,
    this.color,
    this.onPressed,
    this.text
  });
  final Color? color;
  final String? text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color, minimumSize: const Size(100, 40)),
      child: Text(
        '$text'       
      ),
    );
  }
}

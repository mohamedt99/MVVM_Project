import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color,
  });
  final VoidCallback onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color ?? Colors.amber),
        fixedSize: WidgetStatePropertyAll(
          Size(MediaQuery.sizeOf(context).width / 2, 10),
        ),
      ),
      child: Text(text),
    );
  }
}

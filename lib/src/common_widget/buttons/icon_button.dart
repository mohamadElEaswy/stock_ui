import 'package:flutter/material.dart';

class CustomeIconButton extends StatelessWidget {
  const CustomeIconButton(
      {super.key, required this.path, this.onPressed, this.height});
  final String path;
  final void Function()? onPressed;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        path,
        height: height ?? 25,
      ),
    );
  }
}

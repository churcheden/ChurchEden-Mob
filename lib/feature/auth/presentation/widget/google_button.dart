import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final void Function()? onPressed;

  const GoogleButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text('Continue With Google'),
    );
  }
}

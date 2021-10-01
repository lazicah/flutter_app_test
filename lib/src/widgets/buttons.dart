import 'package:flutter/material.dart';

class ButtonTypeA extends StatelessWidget {
  const ButtonTypeA({Key? key, required this.onPressed, required this.child})
      : super(key: key);

  final void Function()? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(350, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: const Color(0xFFB4FEA8),
        elevation: 10,
        primary: const Color(0xFF3D8F30),
        onPrimary: Colors.white,
      ),
    );
  }
}

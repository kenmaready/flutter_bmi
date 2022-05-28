import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color? iconColor;

  const RoundIconButton(
      {Key? key, required this.onPressed, required this.icon, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(width: 42.0, height: 42.0),
      child: Icon(icon, color: iconColor ?? Colors.white),
    );
  }
}

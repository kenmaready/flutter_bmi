import 'package:flutter/material.dart';
//
import 'constants.dart';

class BottomActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const BottomActionButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 72.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 10.0),
        color: Colors.pinkAccent,
        child: Center(
            child: Text(title.toUpperCase(), style: kLargeButtonTextStyle)),
      ),
    );
  }
}

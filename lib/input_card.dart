import 'package:flutter/material.dart';

enum CardState { active, inactive }

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputCard extends StatefulWidget {
  final Widget? child;
  final VoidCallback? onTap;
  bool isActive;
  CardState state = CardState.inactive;

  InputCard({Key? key, this.child, this.onTap, this.isActive = false})
      : super(key: key) {
    if (isActive) {
      state = CardState.active;
    }
  }

  @override
  State<InputCard> createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: widget.onTap ?? () {},
        child: Container(
          margin: const EdgeInsets.all(15.0),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: widget.state == CardState.active
                  ? activeCardColor
                  : inactiveCardColor,
              borderRadius: BorderRadius.circular(10.0)),
          child: widget.child ?? Container(),
        ),
      ),
    );
  }
}

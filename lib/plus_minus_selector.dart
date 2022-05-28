import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
//
import 'round_icon_button.dart';
import 'constants.dart';

class PlusMinusSelector extends StatefulWidget {
  final String title;
  final String? units;
  int value;

  PlusMinusSelector(
      {Key? key, required this.title, this.units, required this.value})
      : super(key: key);

  @override
  State<PlusMinusSelector> createState() => _PlusMinusSelectorState();
}

class _PlusMinusSelectorState extends State<PlusMinusSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.title),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(' ${widget.value.toString()}', style: kKeyNumberTextStyle),
            Text(widget.units ?? ''),
          ],
        ),
        const SizedBox(height: 6.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
                onPressed: () => setState(() => widget.value--),
                icon: FontAwesomeIcons.minus),
            const SizedBox(width: 12.0),
            RoundIconButton(
                onPressed: () => setState(() => widget.value++),
                icon: FontAwesomeIcons.plus),
          ],
        )
      ],
    );
  }
}

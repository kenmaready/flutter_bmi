import 'package:flutter/material.dart';
//
import 'plus_minus_selector.dart';

class AgeSelector extends StatefulWidget {
  final int age;
  final Function callback;

  const AgeSelector({Key? key, required this.age, required this.callback})
      : super(key: key);

  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {
  @override
  Widget build(BuildContext context) {
    return PlusMinusSelector(
        title: 'AGE',
        units: 'yrs',
        value: widget.age,
        callback: widget.callback);
  }
}

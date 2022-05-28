import 'package:flutter/material.dart';
//
import 'plus_minus_selector.dart';

class AgeSelector extends StatefulWidget {
  const AgeSelector({Key? key}) : super(key: key);

  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {
  @override
  Widget build(BuildContext context) {
    return PlusMinusSelector(title: 'AGE', units: 'yrs', value: 25);
  }
}

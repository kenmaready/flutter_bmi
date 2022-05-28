import 'package:flutter/material.dart';
//
import 'plus_minus_selector.dart';

class WeightSelector extends StatefulWidget {
  const WeightSelector({Key? key}) : super(key: key);

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  @override
  Widget build(BuildContext context) {
    return PlusMinusSelector(title: 'WEIGHT', units: 'lbs', value: 140);
  }
}

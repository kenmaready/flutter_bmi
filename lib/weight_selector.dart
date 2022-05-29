import 'package:flutter/material.dart';
//
import 'plus_minus_selector.dart';
import 'constants.dart';

class WeightSelector extends StatefulWidget {
  final int weight;
  final Function callback;
  const WeightSelector({Key? key, required this.weight, required this.callback})
      : super(key: key);

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  @override
  Widget build(BuildContext context) {
    return PlusMinusSelector(
        title: 'WEIGHT',
        units: 'lbs',
        value: widget.weight,
        callback: widget.callback);
  }
}

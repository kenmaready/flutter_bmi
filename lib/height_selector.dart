import 'package:flutter/material.dart';
//
import 'constants.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({Key? key}) : super(key: key);

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  int height = 60;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('HEIGHT'),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text((height / 12).floor().toString(),
                  style: kKeyNumberTextStyle),
              const Text(
                'ft',
                textAlign: TextAlign.center,
              ),
              Text((height % 12).toString(), style: kKeyNumberTextStyle),
              const Text(
                'in',
                textAlign: TextAlign.center,
              )
            ]),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
            thumbColor: Colors.pinkAccent,
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
            overlayColor: Color(0x40eb1555),
          ),
          child: Slider(
            value: height.toDouble(),
            min: 36,
            max: 84,
            inactiveColor: Colors.white24,
            onChanged: (double newValue) {
              setState(() {
                height = newValue.round();
              });
            },
          ),
        ),
      ],
    ));
  }
}

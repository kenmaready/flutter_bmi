import 'package:flutter/material.dart';
//
import 'gender_selector.dart';
import 'height_selector.dart';
import 'input_card.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.notSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter BMI'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          child: Row(
            children: [
              InputCard(
                  child: GenderSelector(gender: Gender.male),
                  isActive: gender == Gender.male,
                  onTap: () {
                    setState(() {
                      if (gender == Gender.male) {
                        gender = Gender.notSelected;
                      } else {
                        gender = Gender.male;
                      }
                    });
                  }),
              InputCard(
                child: GenderSelector(gender: Gender.female),
                isActive: gender == Gender.female,
                onTap: () {
                  setState(() {
                    if (gender == Gender.female) {
                      gender = Gender.notSelected;
                    } else {
                      gender = Gender.female;
                    }
                  });
                },
              )
            ],
          ),
        ),
        InputCard(
          child: HeightSelector(),
        ),
        Expanded(child: Row(children: [InputCard(), InputCard()])),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

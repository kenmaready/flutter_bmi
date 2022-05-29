import 'package:flutter/material.dart';
import 'package:flutter_bmi/constants.dart';
//
import 'bottom_action_button.dart';
import 'gender_selector.dart';
import 'height_selector.dart';
import 'weight_selector.dart';
import 'age_selector.dart';
import 'results_page.dart';
import 'input_card.dart';
import 'calculator.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

// Pointer class is a 'wrapper' allowing us to sort
// of pass variables by reference and use
// function factories/builders below:

class Pointer {
  int value;
  Pointer(this.value);
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.notSelected;
  Pointer heightPointer = Pointer(kStartingHeight);
  Pointer weightPointer = Pointer(kStartingWeight);
  Pointer agePointer = Pointer(kStartingAge);

  // Factory/builder which can build callbacks for the
  // different variables that are being manipulated
  // by child widgets:
  Function handleChangeBuilder(Pointer varPointer) {
    void handleChange(int newValue) {
      setState(() => varPointer.value = newValue);
    }

    return handleChange;
  }

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
          child: HeightSelector(callback: handleChangeBuilder(heightPointer)),
        ),
        Expanded(
            child: Row(children: [
          InputCard(
              child: WeightSelector(
                  weight: weightPointer.value,
                  callback: handleChangeBuilder(weightPointer))),
          InputCard(
              child: AgeSelector(
            age: agePointer.value,
            callback: handleChangeBuilder(agePointer),
          ))
        ])),
        BottomActionButton(
          title: 'Results',
          onTap: () => Navigator.of(context).pushNamed(ResultsPage.routeName,
              arguments: calculateBMI(
                  height: heightPointer.value, weight: weightPointer.value)),
        ),
      ]),
    );
  }
}

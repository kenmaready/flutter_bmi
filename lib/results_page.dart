import 'package:flutter/material.dart';
//
import './bottom_action_button.dart';
import './constants.dart';

enum BMICategory { under, healthy, over, obese }

Map<BMICategory, String> BMITitleMap = {
  BMICategory.under: 'Underweight',
  BMICategory.healthy: 'Healthy',
  BMICategory.over: 'Overweight',
  BMICategory.obese: 'Obese'
};

Map<BMICategory, String> BMIDescriptionMap = {
  BMICategory.under:
      'You have a lower than normal body weight. Try to add more calories into your diet.',
  BMICategory.healthy:
      'You have a healthy body weight. Nice work!  Keep it up!',
  BMICategory.over:
      'You have a higher than normal body weight. Try to exercise more and cut down on calories and fat.',
  BMICategory.obese:
      'Your body weight can be unhealthy. Try to make some lifestyle changes to consume fewer calories and develop regular exercise habits.'
};

class ResultsPage extends StatelessWidget {
  static const String routeName = '/results';

  const ResultsPage({Key? key}) : super(key: key);

  BMICategory getCategory(double bmi) {
    if (bmi >= 30.0) {
      return BMICategory.obese;
    } else if (bmi >= 25.0) {
      return BMICategory.over;
    } else if (bmi >= 18.5) {
      return BMICategory.healthy;
    } else {
      return BMICategory.under;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bmi = ModalRoute.of(context)?.settings.arguments as double;
    final bmiCategory = getCategory(bmi);

    return Scaffold(
      appBar: AppBar(title: Text('Flutter BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 36.0),
              child: Text('Your Result',
                  style:
                      TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold))),
          Container(
              margin: EdgeInsets.all(24.0),
              width: double.infinity,
              child: Text((BMITitleMap[bmiCategory] as String).toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Color(0xFF51FF0D),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600))),
          Container(
              margin: EdgeInsets.all(24.0),
              child: Text(bmi.toStringAsFixed(1),
                  style:
                      TextStyle(fontSize: 84.0, fontWeight: FontWeight.bold))),
          SizedBox(height: 36.0),
          Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                (BMIDescriptionMap[bmiCategory] as String),
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center,
              )),
          Expanded(child: SizedBox(height: 80.0)),
          BottomActionButton(
              title: 'recalculate', onTap: () => Navigator.of(context).pop()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female, notSelected }

class GenderSelector extends StatelessWidget {
  final Gender gender;
  const GenderSelector({Key? key, required this.gender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        gender == Gender.male ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
        size: 64.0,
        color: Color(0xFF8D8E98),
      ),
      const SizedBox(height: 15.0),
      Text(gender == Gender.male ? 'MALE' : 'FEMALE')
    ]));
  }
}

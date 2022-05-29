import 'dart:math';

double calculateBMI({
  required int height,
  required int weight,
}) {
  return (weight * 703) / pow(height, 2);
}

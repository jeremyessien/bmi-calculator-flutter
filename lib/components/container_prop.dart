import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class ContainerProp extends StatelessWidget {
  ContainerProp({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 80.0,
        color: Colors.white,
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        label,
        style:kLabelText,
      ),
    ]);
  }
}

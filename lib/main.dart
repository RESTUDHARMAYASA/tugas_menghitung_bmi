import 'package:flutter/material.dart';
import 'bmi.dart';

void main() => runApp(
    MaterialApp(
    theme: ThemeData(
// Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.blueGrey,
    accentColor: Colors.white54
),
      home:  InputBMI(),
    )

);
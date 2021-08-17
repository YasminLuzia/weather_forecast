import 'package:flutter/material.dart';
import 'package:weather_forecast/screens/home/home.dart';
import 'package:weather_forecast/style.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: greyTheme,
        textTheme: TextTheme()
      ),
      themeMode: ThemeMode.dark,
    )
  );
}
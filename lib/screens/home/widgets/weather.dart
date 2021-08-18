import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_forecast/models/forecast.dart';

class Weather extends StatelessWidget {
 final Forecast forecast;

 const Weather(this.forecast);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16
      ),
      child: Column(
        children: [
          Text(
            this.forecast.dayOfWeek
          ),
          SvgPicture.asset(
            this.forecast.icon
          ),
          Text(
            "${this.forecast.degrees}°"
          )
        ],
      ),
    );
  }
}
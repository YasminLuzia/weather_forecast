import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_forecast/screens/shared/find_icon.dart';

class MainScreen extends StatelessWidget {
  final data;
  const MainScreen({
    Key? key, 
    required this.data 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( child: 
        SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  this.data["city"],
                  style: Theme.of(context).textTheme.headline6
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  this.data["date"],
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: 37,
                ),
                SvgPicture.asset(
                  findIcon(this.data["condition_slug"]),
                  width: 50,
                ),
                Text(
                  "${this.data["temp"]}°",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  this.data["description"],
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20
                  ),
                  child: SvgPicture.asset(
                    "assets/images/vento.svg",
                  ),
                ),
                Text(
                  this.data["wind_speedy"]
                )
              ],
            ),
          ),
        )
      )
    );
  }
}
/* // ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_api_app/models/weather_forecastDaily.dart';
import 'package:weather_api_app/utilites/forecast_util.dart';


class DetailView extends StatelessWidget {

  final AsyncSnapshot<WeatherForecast>? snapshot;
   const DetailView({Key? key, this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot?.data?.list;
    var pressure = forecastList![0].pressure! * 0.750062;
    var humidity = forecastList[0].humidity;
    var wind = forecastList[0].speed;
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Util.getItem(FontAwesomeIcons.thermometerThreeQuarters, pressure.round(), 'mm Hg'),
          Util.getItem(FontAwesomeIcons.cloudRain, humidity!, '%'),
          Util.getItem(FontAwesomeIcons.wind, wind!.toInt(), 'm/s'),
        ],
      ),
    );
  }
} */
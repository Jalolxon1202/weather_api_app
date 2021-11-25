// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:weather_api_app/models/weather_forecastDaily.dart';
import 'package:weather_api_app/utilites/forecast_util.dart';

class CityView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast>? snapshot;
  const CityView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot?.data?.list;
    var city = snapshot?.data?.city!.name;
    var country = snapshot?.data?.city!.country;
    var formattedDate =
        DateTime.fromMillisecondsSinceEpoch(forecastList![0].dt! * 1000);
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            '$city, $country',
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            Util.getFormattedDate(formattedDate),
            style: const TextStyle(
              color: Color(0xff797994),
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}

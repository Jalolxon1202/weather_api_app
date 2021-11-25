// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:weather_api_app/models/weather_forecastDaily.dart';
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_api_app/models/weather_forecastDaily.dart';
import 'package:weather_api_app/utilites/forecast_util.dart';

// class DetailView extends StatelessWidget {
//   final AsyncSnapshot<WeatherForecast>? snapshot;
//   const DetailView({Key? key, this.snapshot}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var forecastList = snapshot?.data?.list;
//     var pressure = forecastList![0].pressure! * 0.750062;
//     var humidity = forecastList[0].humidity;
//     var wind = forecastList[0].speed;
//     return Container(
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Util.getItem(FontAwesomeIcons.thermometerThreeQuarters,
//               pressure.round(), 'mm Hg'),
//           Util.getItem(FontAwesomeIcons.cloudRain, humidity!, '%'),
//           Util.getItem(FontAwesomeIcons.wind, wind!.toInt(), 'm/s'),
//         ],
//       ),
//     );
//   }
// }

class TempView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast>? snapshot;
  const TempView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot?.data?.list;
    // var pressure = forecastList![0].pressure! * 0.750062;
    var humidity = forecastList![0].humidity;
    var wind = forecastList[0].speed;
    var icon = forecastList[0].getIconUrl();
    var temp = forecastList[0].temp!.day!.toInt();
    var description = forecastList[0].weather![0].description!.toUpperCase();
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            icon,
            scale: 0.4,
          ),
          const SizedBox(width: 20.0),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Util.getItem('Temp', temp, '°C'),
                Util.getItem('Wind', wind!.toInt(), 'km/h'),
                Util.getItem('Humidity', humidity!, '%'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

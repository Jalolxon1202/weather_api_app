// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:weather_api_app/models/weather_forecastDaily.dart';

import 'forecast_card.dart';

class BottomListView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast>? snapshot;
  const BottomListView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Text(
          '7-day weather forecast',
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 290,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemCount: snapshot!.data!.list!.length,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xff0F0E2E),
                  borderRadius: BorderRadius.circular(13)),
              height: 92,
              child: forecastCard(snapshot!, index),
            ),
          ),
        ),
      ],
    );
  }
}

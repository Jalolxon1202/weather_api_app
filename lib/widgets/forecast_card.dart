// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:weather_api_app/utilites/forecast_util.dart';

Widget forecastCard(AsyncSnapshot snapshot, int index) {
  var forecastList = snapshot.data.list;
  var formattedDate =
      DateTime.fromMillisecondsSinceEpoch(forecastList![0].dt! * 1000);

  var dayOfWeek = '';
  DateTime date =
      DateTime.fromMillisecondsSinceEpoch(forecastList[index].dt * 1000);
  var fullDate = Util.getFormattedDate(date);
  dayOfWeek = fullDate.split(',')[0]; // Tue
  var tempMin = forecastList[index].temp.min.toStringAsFixed(0);
  var icon = forecastList[index].getIconUrl();
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          dayOfWeek,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            '$tempMin ℃',
            style: const TextStyle(fontSize: 37, color: Colors.white),
          ),
        ),
        Image.network(
          icon,
          scale: 0.6,
        )
      ],
    ),
  );
  // Column(
  // mainAxisAlignment: MainAxisAlignment.start,
  // crossAxisAlignment: CrossAxisAlignment.start,
  // children: <Widget>[
  // Center(
  // child: Padding(
  // padding: const EdgeInsets.all(8.0),
  // child: Text(
  // dayOfWeek,
  // style: const TextStyle(fontSize: 25, color: Colors.white),
  // ),
  // ),
  // ),
  // Row(
  // mainAxisAlignment: MainAxisAlignment.center,
  // children: <Widget>[
  // Column(
  // children: <Widget>[
  // Row(
  // children: <Widget>[
  // Padding(
  // padding: const EdgeInsets.all(8.0),
  // child: Text(
  // '$tempMin °C',
  // style: const TextStyle(
  // fontSize: 30.0,
  // color: Colors.white,
  // ),
  // ),
  // ),
  // Image.network(icon, scale: 1.2, color: Colors.white),
  // ],
  // ),
  // ],
  // ),
}

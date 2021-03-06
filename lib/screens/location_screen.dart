// ignore_for_file: avoid_print

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:flutter/material.dart';
import 'package:weather_api_app/api/weather_api.dart';
import 'package:weather_api_app/screens/weather_forecast_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  void getLocationData() async {
    try {
      var weatherInfo = await WeatherApi().fetchWeatherForecast();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return WeatherForecastScreen(locationWeather: weatherInfo);
      }));
    } catch (e) {
      print('$e');
    }
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF06021F),
      body: Center(
        child: SpinKitDoubleBounce(color: Colors.blueGrey, size: 100.0),
      ),
    );
  }
}

// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:weather_api_app/utilites/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            const Text(
              'Pick location',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
                'Find the city that you want to know           \nthe detailed        \nweather info at this time',
                style: TextStyle(color: Color(0xffB4B4C3)),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.white54,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: Color(0xff282440),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(11.0),
                              ),
                              borderSide: BorderSide.none),
                          icon: const Icon(Icons.location_on_outlined),
                        ),
                        onChanged: (value) {
                          cityName = value;
                        },
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff282440),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          Navigator.pop(context, cityName);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

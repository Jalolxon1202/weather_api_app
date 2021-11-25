import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Util {
  static String getFormattedDate(DateTime dateTime) {
    return DateFormat('EEE, MMM d, y').format(dateTime); // Tue, May 5, 2020
  }

  static getItem(String name, int value, String units) {
    return Column(
      children: <Widget>[
        Text(name,
            style: const TextStyle(color: Color(0xff92929e), fontSize: 13.0)),
        const SizedBox(height: 10.0),
        Row(
          children: [
            Text(
              '$value',
              style: const TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            Text(
              units,
              style: const TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}

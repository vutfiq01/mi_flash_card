import 'package:flutter/material.dart';
import '../weatherUtilities/weather_constants.dart';

class WeatherCityScreen extends StatefulWidget {
  const WeatherCityScreen({super.key});

  @override
  State<WeatherCityScreen> createState() => _WeatherCityScreenState();
}

class _WeatherCityScreenState extends State<WeatherCityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/weather_city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 50.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: null,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ))
          ],
        )),
      ),
    );
  }
}

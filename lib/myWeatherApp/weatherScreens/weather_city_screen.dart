import 'package:flutter/material.dart';
import '../../widget/navigation_drawer.dart';
import '../weatherUtilities/weather_constants.dart';

class WeatherCityScreen extends StatefulWidget {
  const WeatherCityScreen({super.key});

  @override
  State<WeatherCityScreen> createState() => _WeatherCityScreenState();
}

class _WeatherCityScreenState extends State<WeatherCityScreen> {
  String? typedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      drawer: const MyNavigationDrawer(),
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
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  typedLocation = value;
                },
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: kTextFieldInputDecoration,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, typedLocation);
                },
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

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../weatherServices/weather_location.dart';

class WeatherLoadingScreen extends StatefulWidget {
  const WeatherLoadingScreen({super.key});

  @override
  State<WeatherLoadingScreen> createState() => _WeatherLoadingScreenState();
}

class _WeatherLoadingScreenState extends State<WeatherLoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location currentLoc = Location();
    await currentLoc.getCurrentLocation();
    print(currentLoc.latitude);
    print(currentLoc.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

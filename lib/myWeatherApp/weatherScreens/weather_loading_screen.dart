// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../weatherServices/weather_location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    getWeatherData();
  }

  void getLocation() async {
    Location currentLoc = Location();
    await currentLoc.getCurrentLocation();
    print(currentLoc.latitude);
    print(currentLoc.longitude);
  }

  void getWeatherData() async {
    http.Response apiResponse = await http.get(
      Uri.parse(
          'http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=0c425dcbc42df4f505aec969715b76f3'),
    );
    if (apiResponse.statusCode == 200) {
      String apiData = apiResponse.body;
      var decodedData = jsonDecode(apiData);
      int weatherCondition = decodedData['weather'][0]['id'];
      double weatherTemparature = decodedData['main']['temp'];
      String weatherLocationName = decodedData['name'];

      print(weatherLocationName);
      print(weatherTemparature);
      print(weatherCondition);
    } else {
      print(apiResponse.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class WeatherLoadingScreen extends StatefulWidget {
  const WeatherLoadingScreen({super.key});

  @override
  State<WeatherLoadingScreen> createState() => _WeatherLoadingScreenState();
}

class _WeatherLoadingScreenState extends State<WeatherLoadingScreen> {
  void getPhoneLocation() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      //nothing
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getPhoneLocation();
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}

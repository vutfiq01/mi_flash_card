import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mi_flash_card/myWeatherApp/weatherServices/weather_weather.dart';
import 'weather_location_screen.dart';

class WeatherLoadingScreen extends StatefulWidget {
  const WeatherLoadingScreen({super.key});

  @override
  State<WeatherLoadingScreen> createState() => _WeatherLoadingScreenState();
}

class _WeatherLoadingScreenState extends State<WeatherLoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationWeatherData();
  }

  void getLocationWeatherData() async {
    await WeatherModel().getLocWeaData().then(
          (value) => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WeatherLocationScreen(
                locationWeatherData: value,
              ),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mi_flash_card/myWeatherApp/weatherScreens/weather_city_screen.dart';
import 'package:mi_flash_card/myWeatherApp/weatherServices/weather_weather.dart';
import '../weatherUtilities/weather_constants.dart';

class WeatherLocationScreen extends StatefulWidget {
  const WeatherLocationScreen({super.key, required this.locationWeatherData});
  final dynamic locationWeatherData;

  @override
  State<WeatherLocationScreen> createState() => _WeatherLocationScreenState();
}

class _WeatherLocationScreenState extends State<WeatherLocationScreen> {
  String? weatherConditionIconUrl;
  int? weatherTemparature;
  String? weatherLocationName;

  @override
  void initState() {
    super.initState();
    updateUIData(widget.locationWeatherData);
  }

  void updateUIData(dynamic locationWeatherData) {
    setState(() {
      if (locationWeatherData == null) {
        weatherTemparature = 0;
        weatherConditionIconUrl =
            'https://static-00.iconduck.com/assets.00/error-icon-2048x2037-x9opq5d3.png';
        weatherLocationName = '';

        return;
      }
      weatherConditionIconUrl =
          locationWeatherData['current']['condition']['icon'];
      double doubleTypeTemparature = locationWeatherData['current']['temp_c'];
      weatherTemparature = doubleTypeTemparature.toInt();

      weatherLocationName = locationWeatherData['location']['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    WeatherModel weather = WeatherModel();
    String comment = weather.getMessage(weatherTemparature ?? 26);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/weather_location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () async {
                      var weatherData = await weather.getLocWeaData();
                      updateUIData(weatherData);
                    },
                    child: const Icon(
                      Icons.near_me,
                      size: 60.0,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      var typedLocation = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WeatherCityScreen(),
                        ),
                      );
                      if (typedLocation != null) {
                        var weatherData =
                            await weather.getTypedLocWeaData(typedLocation);
                        updateUIData(weatherData);
                      }
                    },
                    child: const Icon(
                      Icons.location_city,
                      size: 60.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$weatherTemparature°',
                      style: kTempTextStyle,
                    ),
                    Image(
                      image: NetworkImage(
                        'http:$weatherConditionIconUrl',
                      ),
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  '$comment in $weatherLocationName!',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

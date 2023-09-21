import 'weather_location.dart';
import 'weather_networking.dart';

String apiKey = 'cfac641d5ba44bfd87561432232109';
String weatherAPIInitialUrl = 'http://api.weatherapi.com/v1/current.json?key';

class WeatherModel {
  Future<dynamic> getTypedLocWeaData(String typedLocation) async {
    WeatherAPICaller apiDataObject = WeatherAPICaller(
        url: '$weatherAPIInitialUrl=$apiKey&q=$typedLocation&aqi=no');
    var apiWeatherData = await apiDataObject.getAPIData();

    return apiWeatherData;
  }

  Future<dynamic> getLocWeaData() async {
    Location currentLoc = Location();
    await currentLoc.getCurrentLocation();
    WeatherAPICaller apiDataObject = WeatherAPICaller(
        url:
            '$weatherAPIInitialUrl=$apiKey&q=${currentLoc.latitude},${currentLoc.longitude}&aqi=no');
    var apiWeatherData = await apiDataObject.getAPIData();

    return apiWeatherData;
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}

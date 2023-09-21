// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherAPICaller {
  String url;
  WeatherAPICaller({required this.url});

  Future getAPIData() async {
    http.Response apiResponse = await http.get(
      Uri.parse(url),
    );
    if (apiResponse.statusCode == 200) {
      String apiData = apiResponse.body;
      return jsonDecode(apiData);
    } else {
      print(apiResponse.statusCode);
    }
  }
}

// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class WeatherApiClient {
  Future<WheatherModel>? getCurrentWeather(String? location) async {
    var endPoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=eb42031611601a1401c1e7423f7ce112&units=metric");

    var response = await http.get(endPoint);
    var body = jsonDecode(response.body);
    print(WheatherModel.fromJson(body).cityName);
    return WheatherModel.fromJson(body);
  }
}
import 'dart:convert';

import 'package:clima/classes/WeatherApp.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  double latitude;
  double longitude;
  final apiKey = "7c57a438eb121206a35d33fab0fe2df9";

  void getData() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    print("this location");
    print(position.latitude);

    this.latitude = position.latitude;
    this.longitude = position.longitude;

    String url =
        "http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&";

    http.Response response = await http.get(url);

    print(url);

    WeatherApp result = WeatherApp.fromJson(jsonDecode(response.body));

    double temp = result.main.temp;
    int condition = result.weather.first.id;
    String cityName = result.name;

    print(cityName);
  }
}

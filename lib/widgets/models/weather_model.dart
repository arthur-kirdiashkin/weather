

import 'package:weathertwo/widgets/weather_icons.dart';

class Weather{
  String? cityName; // название города
  double? temp; // темература
  double? wind; // скорость ветра
  int? humidity; // влажность
  double? feels_like; // по ощущениям
  int? pressure; // давление
  List<WeatherIcons> weatherIcons;


  Weather(
    {this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.feels_like,
    this.pressure,
    required this.weatherIcons,
    }
  );

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      cityName: json['name'] as String,
      temp: json['main']['temp'] as double,
      wind: json['wind']['speed'] as double,
      humidity: json['main']['humidity'] as int,
      feels_like: json['main']['feels_like'] as double, 
      pressure: json['main']['pressure'] as int,
      weatherIcons: (json['weather'] as List<dynamic>).map((e) => WeatherIcons.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}



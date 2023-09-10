
import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'dart:io';

import 'package:weathertwo/widgets/models/weather_model.dart';



class WeatherApiClient{
  
  Future<Weather>? getWeather(String? location) async {
    var url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$location&appid=d355bc452190b3e266cf8d4932aa64d6&units=metric');
    var response = await http.get(url);
    // jsonDecode нужен для получения JSON, то есть, мы получаем конкретное тело при выполнении этой команды ниже
    var body = jsonDecode(response.body);
    // получаем тело из JSON, преобразуем его в класс Weather, который написан отдельно
    return Weather.fromJson(body);
  }
}


// example to get information from server without http bibl
//  Future<List<Map<String, dynamic>>> getWeather() async { 
//     final url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=London&appid=d355bc452190b3e266cf8d4932aa64d6&units=metric');
//     final request =  await client.getUrl(url);
//     final response = await request.close();
//     final jsonStrings = await response.transform(utf8.decoder).toList();
//     final jsonString = jsonStrings.join();
//     final json = jsonDecode(jsonString) as List<dynamic>;
//     final partWeather = json.map((e) => Weather.fromJson(e) as Map<String, dynamic>).toList();
//     return partWeather;
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:weathertwo/widgets/weather_icons.dart';

class MainInfoWeatherWidget extends StatelessWidget {

  String location;
  String temp;
  List<WeatherIcons> weatherIcons;
  Image? iconWeather;

  MainInfoWeatherWidget(
    {super.key,
    required this.location,
    required this.temp,
    required this.weatherIcons,
    this.iconWeather,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            //Text('${weatherIcons[0].main}'),
            if(weatherIcons[0].main == 'Clouds')
               iconWeather = Image.asset("assets/lightcloud.png", width: 100, height: 100,),
            if(weatherIcons[0].main == 'Clear')
               iconWeather = Image.asset("assets/clear.png", width: 100, height: 100,),
            if(weatherIcons[0].main == 'Thunderstorm')
               iconWeather = Image.asset("assets/thunderstorm.png", width: 100, height: 100,),
            if(weatherIcons[0].main == 'Drizzle')
               iconWeather = Image.asset("assets/lightrain.png", width: 100, height: 100,),
            if(weatherIcons[0].main == 'Rain')
               iconWeather = Image.asset("assets/heavyrain.png", width: 100, height: 100,),
            if(weatherIcons[0].main == 'Snow')
               iconWeather = Image.asset("assets/hail.png", width: 100, height: 100,),
            
            SizedBox(
              height: 20,
            ),
            Text('$temp',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('$location',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 104, 104, 104),
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );;
  }
}
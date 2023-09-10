import 'dart:io';

import 'package:flutter/material.dart';
import 'package:weathertwo/widgets/additional_info_widget.dart';
import 'package:weathertwo/widgets/api_clients/weather_api_client.dart';
import 'package:weathertwo/widgets/main_info_weather_widget.dart';
import 'package:weathertwo/widgets/models/weather_model.dart';

class GetStarted extends StatefulWidget {

  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();

}

class _GetStartedState extends State<GetStarted> {
  
  late Future<Weather>? futureWeather;

  
  

  @override
  void initState() {
    super.initState();
    futureWeather = WeatherApiClient().getWeather("Moscow");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Weather App')),),
      body: FutureBuilder<Weather>(
        future: futureWeather,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){ 
          return  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainInfoWeatherWidget(location: '${snapshot.data!.cityName} ', temp: '${snapshot.data!.temp} °C', weatherIcons: [snapshot.data!.weatherIcons[0]],),
            Text('Дополнительная информация',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            AdditionalInfoWeatherWidget(
              wind: '${snapshot.data!.wind} м/с', 
              feels_like: '${snapshot.data!.feels_like} °C', 
              humidity: '${snapshot.data!.humidity} %', 
              pressure: '${snapshot.data!.pressure} ГПа',
            ),
          ],
        ),
          );
          }
          else if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator()
            );
          }
          return Container( color: Colors.blue,);
        },
      ),
    );
  }
}


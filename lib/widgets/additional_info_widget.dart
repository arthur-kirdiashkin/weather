import 'package:flutter/material.dart';



class AdditionalInfoWeatherWidget extends StatelessWidget {
  String wind;
  String humidity;
  String feels_like;
  String pressure;


   AdditionalInfoWeatherWidget(
    {super.key,
      required this.wind,
      required this.humidity, // влажность
      required this.feels_like,
      required this.pressure // давление
    }
   );

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Скорость ветра',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 254, 254),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 216, 216, 216),
                      offset: Offset.zero,
                      blurRadius: 0.8,
                      spreadRadius: 0.5
                    )],
                  ),
                  child: Image.asset("assets/windspeed.png", width: 40, height: 40,)),
                SizedBox(height: 10,),
                Text('$wind'),
              ],
            ),
            Column(
              children: [
                Text('Влажность',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 254, 254),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 216, 216, 216),
                      offset: Offset.zero,
                      blurRadius: 0.8,
                      spreadRadius: 0.5
                    )],
                  ),
                  child: Image.asset("assets/humidity.png", width: 40, height: 40,)),
                SizedBox(height: 10,),
                Text('$humidity'),
              ],
            ),
          ],
        ),
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('По ощущениям',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 254, 254),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 216, 216, 216),
                      offset: Offset.zero,
                      blurRadius: 0.8,
                      spreadRadius: 0.5
                    )],
                  ),
                  child: Image.asset("assets/max-temp.png", width: 40, height: 40,)),
                SizedBox(height: 10,),
                Text('$feels_like'),
              ],
            ),
            Column(
              children: [
                Text('Давление',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 187, 187, 187),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 216, 216, 216),
                      offset: Offset.zero,
                      blurRadius: 0.4,
                      spreadRadius: 0.8
                    )],
                  ),
                  child: Image.asset("assets/pressure.jpg", width: 40, height: 40,)),
                SizedBox(height: 10,),
                Text('$pressure'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
      
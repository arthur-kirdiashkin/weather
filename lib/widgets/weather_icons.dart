class WeatherIcons{
  String main;
  
  WeatherIcons({required this.main});


  factory WeatherIcons.fromJson(Map<String, dynamic> json){
    return WeatherIcons(main: json['main']);
  }
}

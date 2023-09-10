import 'package:flutter/material.dart';
import 'package:weathertwo/widgets/auth_widget.dart';
import 'package:weathertwo/widgets/get_staryed.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/auth',
      routes: <String, WidgetBuilder>{
        '/auth' :(context) => const AuthWidget(), // add new comment
        '/cities':(context) => const GetStarted(),
        
      }
    );
  }
}



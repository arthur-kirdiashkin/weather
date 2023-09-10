import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 169, 196, 255),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/get-started.png'),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 140,
              child: ElevatedButton(onPressed: () {
                Navigator.pushReplacementNamed(context, '/cities');
              }, 
              child: Text('Get Started'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 158, 151)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
              
              ),
            )
          ],
        ),
      );
  }
}
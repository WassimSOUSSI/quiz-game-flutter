// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore: prefer_const_literals_to_create_immutable

import 'package:flutter/material.dart';

class HomeInterface extends StatelessWidget {
  const HomeInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 110,
              ),
              Image(
                image: AssetImage('assets/Splash_App_Icon.png'),
                width: 200,
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Humor Test",
                style: TextStyle(
                    fontSize: 35, color: Color.fromRGBO(72, 61, 61, 1)),
              ),
              SizedBox(
                height: 110,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/quiz');
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 90, vertical: 9)),
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(253, 106, 2, 1)),
                ),
                child: Text(
                  "Play",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 170,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text(
                  'About',
                  style: TextStyle(
                      fontSize: 28,
                      color: Color.fromRGBO(72, 61, 61, .8),
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

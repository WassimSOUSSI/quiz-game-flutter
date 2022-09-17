// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutInterface extends StatelessWidget {
  const AboutInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
              height: 240,
              alignment: Alignment.center,
              child: Image(
                image: AssetImage('assets/Question_mark .png'),
                width: 150,
              )),
          Container(
            color: Colors.white,
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                "This application is a test for emotions based on PANAS scale that consists of different words that " +
                    "describe feelings and emotions and Sentiment Dart module that uses a wordlist to perform sentiment analysis on an input text ." +
                    "There will be a list of emotions you have to read each item and indicate to what extent do you feel each emotion at the moment. " +
                    "When you finish the test suggestions adapted to your state (based on researches on the internet) will show up to you .",
                style: TextStyle(
                  height: 1.42,
                  wordSpacing: 2,
                  fontSize: 23.5,
                  color: Color.fromRGBO(72, 61, 61, .9),
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Color.fromRGBO(253, 106, 2, 1),
        child: Icon(
          Icons.home,
          size: 42,
          color: Colors.white,
        ),
      ),
    );
  }
}

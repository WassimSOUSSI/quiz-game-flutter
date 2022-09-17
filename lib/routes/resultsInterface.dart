// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:application/routes/quizInterface.dart';
import 'package:application/suggestionModel.dart';
import 'package:flutter/material.dart';
import 'package:sentiment_dart/sentiment_dart.dart';

class ResultsInterface extends StatefulWidget {
  final String answer;

  ResultsInterface(this.answer);
  @override
  State<ResultsInterface> createState() => ResultsInterfaceState();
}

class ResultsInterfaceState extends State<ResultsInterface> {
  late List<Suggestion> suggestionList;
  var customLang = {
    //The last p or n in each word represents positive or negative
    'notp': 1,
    'notn': -1,
    'littlep': 2,
    'littlen': -2,
    'moderatelyp': 3,
    'moderatelyn': -3,
    'quiteabitp': 4,
    'quiteabitn': -4,
    'extremelyp': 5,
    'extremelyn': -5
  };

  void suggestionListFill() {
    var result = Sentiment.analysis(widget.answer, customLang: customLang);
    if (result.score <= 5 && result.score >= -5) {
      suggestionList = getSuggestions("Neutral");
    } else if (result.score > 5) {
      suggestionList = getSuggestions("Good");
    } else if (result.score < -5) {
      suggestionList = getSuggestions("Bad");
    }
  }

  @override
  Widget build(BuildContext context) {
    suggestionListFill();
    var result = Sentiment.analysis(widget.answer, customLang: customLang);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 62),
                child: CustomPaint(
                  size: Size(double.infinity, 300),
                  painter: WavesClipPath(),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 300,
                    width: double.infinity,
                    child: Text(
                      "According to your predicted mood we suggest you the following activities to do :",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 10,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/home');
                  },
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.home,
                    size: 42,
                    color: Color.fromRGBO(253, 106, 2, 1),
                  ),
                ),
              )
            ],
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceEvenly,
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 170,
                        height: 170,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 0.1,
                                  blurRadius: 3)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(suggestionList[0].suggestionText,
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(253, 106, 2, 0.96))),
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 0.1,
                                    blurRadius: 3)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(suggestionList[1].suggestionText,
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(253, 106, 2, 0.96)))),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 0.1,
                                    blurRadius: 3)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(suggestionList[2].suggestionText,
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(253, 106, 2, 0.96)))),
                    ])),
          )
        ],
      ),
    );
  }
}

class WavesClipPath extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromRGBO(253, 106, 2, 1)
      ..style = PaintingStyle.fill;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.8);
    path0.quadraticBezierTo(
        size.width * 0.5, size.height + 60, size.width, size.height * 0.8);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

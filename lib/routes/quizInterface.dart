// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:application/itemModel.dart';
import 'package:application/routes/resultsInterface.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class QuizInterface extends StatefulWidget {
  @override
  State<QuizInterface> createState() => _QuizScreenState();
}

//List<Question> itemList = getQuestions();
List<PANASItem> itemList = getItems();
int currentQuestionIndex = 0;

bool not_at_all = false;
bool a_little = false;
bool moderately = false;
bool quite_a_bit = false;
bool extremely = false;

bool isLastQuestion = false;

String btnTxt = "Next";

String answer = " ";

class _QuizScreenState extends State<QuizInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 62),
              child: CustomPaint(
                size: Size(double.infinity, 300),
                painter: WavesClipPath(),
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: double.infinity,
                  child: Text(itemList[currentQuestionIndex].item,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (not_at_all) {
                        not_at_all = false;
                      } else {
                        setChoises();
                        not_at_all = true;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    primary: not_at_all
                        ? Color.fromRGBO(253, 106, 2, 0.85)
                        : Colors.white,
                    onPrimary: not_at_all
                        ? Colors.white
                        : Color.fromRGBO(253, 106, 2, 1),
                  ),
                  child: Text(
                    "not at all",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (a_little) {
                        a_little = false;
                      } else {
                        setChoises();
                        a_little = true;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    primary: a_little
                        ? Color.fromRGBO(253, 106, 2, 0.85)
                        : Colors.white,
                    onPrimary: a_little
                        ? Colors.white
                        : Color.fromRGBO(253, 106, 2, 1),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "A little",
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (moderately) {
                        moderately = false;
                      } else {
                        setChoises();
                        moderately = true;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    primary: moderately
                        ? Color.fromRGBO(253, 106, 2, 0.85)
                        : Colors.white,
                    onPrimary: moderately
                        ? Colors.white
                        : Color.fromRGBO(253, 106, 2, 1),
                  ),
                  child: Text(
                    "Moderately",
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (quite_a_bit) {
                        quite_a_bit = false;
                      } else {
                        setChoises();
                        quite_a_bit = true;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    primary: quite_a_bit
                        ? Color.fromRGBO(253, 106, 2, 0.85)
                        : Colors.white,
                    onPrimary: quite_a_bit
                        ? Colors.white
                        : Color.fromRGBO(253, 106, 2, 1),
                  ),
                  child: Text(
                    "Quite a bit",
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (extremely) {
                        extremely = false;
                      } else {
                        setChoises();
                        extremely = true;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    primary: extremely
                        ? Color.fromRGBO(253, 106, 2, 0.85)
                        : Colors.white,
                    onPrimary: extremely
                        ? Colors.white
                        : Color.fromRGBO(253, 106, 2, 1),
                  ),
                  child: Text(
                    "Extremely",
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.w400),
                  )),
            ),
          ],
        ),
        Positioned(
            bottom: 25,
            right: 15,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (currentQuestionIndex == itemList.length-2) {
                      btnTxt = "VALIDATE";
                    }
                    if (currentQuestionIndex + 1 == itemList.length) {
                      isLastQuestion = true;
                    }
                    if (!isLastQuestion) {
                      if (not_at_all) {
                        choiseSelected(
                            1, itemList[currentQuestionIndex].affect);
                      } else if (a_little) {
                        choiseSelected(
                            2, itemList[currentQuestionIndex].affect);
                      } else if (moderately) {
                        choiseSelected(
                            3, itemList[currentQuestionIndex].affect);
                      } else if (quite_a_bit) {
                        choiseSelected(
                            4, itemList[currentQuestionIndex].affect);
                      } else {
                        choiseSelected(
                            5, itemList[currentQuestionIndex].affect);
                      }
                      currentQuestionIndex++;
                      setChoises();
                    }
                    //if it's last question
                    else {
                      if (not_at_all) {
                        choiseSelected(
                            1, itemList[currentQuestionIndex].affect);
                      } else if (a_little) {
                        choiseSelected(
                            2, itemList[currentQuestionIndex].affect);
                      } else if (moderately) {
                        choiseSelected(
                            3, itemList[currentQuestionIndex].affect);
                      } else if (quite_a_bit) {
                        choiseSelected(
                            4, itemList[currentQuestionIndex].affect);
                      } else {
                        choiseSelected(
                            5, itemList[currentQuestionIndex].affect);
                      }
                      isLastQuestion = false;
                      currentQuestionIndex = 0;
                      setChoises();
                      btnTxt = "NEXT";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultsInterface(answer)));
                    }
                  });
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 20, vertical: 9)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(253, 106, 2, 1)),
                ),
                child: Text(
                  btnTxt,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ))),
        Positioned(
            top: 65,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.white,
                )))
      ]),
    );
  }
}

void choiseSelected(int choise, String affect) {
  switch (choise) {
    //User choise not at all
    case 1:
      if (affect == "positive") {
        answer = answer + " notp";
      } else {
        answer = answer + " notn";
      }
      break;
    //User choise a little
    case 2:
      if (affect == "positive") {
        answer = answer + " littlep";
      } else {
        answer = answer + " littlen";
      }
      break;
    case 3:
      if (affect == "positive") {
        answer = answer + " moderatelyp";
      } else {
        answer = answer + " moderatelyn";
      }
      break;
    case 4:
      if (affect == "positive") {
        answer = answer + " quiteabitp";
      } else {
        answer = answer + " quiteabitn";
      }
      break;
    case 5:
      if (affect == "positive") {
        answer = answer + " extremelyp";
      } else {
        answer = answer + " extremelyn";
      }
      break;
    default:
  }
}

void setChoises() {
  moderately = false;
  not_at_all = false;
  a_little = false;
  quite_a_bit = false;
  extremely = false;
}

class WavesClipPath extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromRGBO(253, 106, 2, 1)
      ..style = PaintingStyle.fill;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(
        0, size.height * 0.9866667); 
    path0.quadraticBezierTo(size.width * 0.15, size.height * 0.60,
        size.width * 0.4, size.height * 0.90);
    path0.cubicTo(
        size.width * 0.4,
        size.height * 0.9000000,
        size.width * 0.5,
        size.height * 1.0900000,
        size.width * 0.7171429,
        size.height * 0.9166667);
    path0.quadraticBezierTo(size.width * 0.9, size.height * 0.7783333,
        size.width * 0.9942857, size.height * 0.9900000);
    path0.lineTo(size.width, size.height);
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

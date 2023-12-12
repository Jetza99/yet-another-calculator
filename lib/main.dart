import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userInput = '';
  var result = '';

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        //color: Colors.grey,
                      )),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                      alignment: Alignment.bottomRight,
                      //color: Colors.grey[200],
                      child: Text(
                        userInput,
                        maxLines: 1,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 50),

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
              child: Divider(thickness: 0.3,),
            ),
            Flexible(
              flex: 2,
              child: Container(
                //decoration: BoxDecoration(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: GridView.count(
                      crossAxisCount: 4,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.orangeAccent,
                            ),
                            child: Text('AC'),
                            onPressed: (){
                              setState(() {
                                userInput='';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.orangeAccent,
                            ),
                            child: const Icon(
                              Icons.backspace_outlined,
                              size: 45,
                              textDirection: TextDirection.rtl,
                            ),
                            onPressed: (){
                              setState(() {
                                userInput = userInput.substring(0, userInput.length - 1);
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.orangeAccent,
                            ),
                            child: const Icon(
                              Icons.percent,
                              size: 45,
                              textDirection: TextDirection.rtl,
                            ),
                            onPressed: (){
                              setState(() {
                                var numberToPercent = double.parse(userInput);
                                numberToPercent /= 100;
                                userInput = numberToPercent.toString();
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.orangeAccent,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.divide,
                              size: 45,
                              textDirection: TextDirection.rtl,
                            ),
                            onPressed: (){
                              setState(() {
                                equalPressed();
                                userInput += '/';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('1'),
                            onPressed: (){
                              setState(() {
                                userInput+='1';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('2'),
                            onPressed: (){
                              setState(() {
                                userInput+='2';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('3'),
                            onPressed: (){
                              setState(() {
                                userInput+='3';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.orangeAccent,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.xmark,
                              size: 45,
                              textDirection: TextDirection.rtl,
                            ),
                            onPressed: (){
                              setState(() {
                                equalPressed();
                                userInput += 'x';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('4'),
                            onPressed: (){
                              setState(() {
                                userInput+='4';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('5'),
                            onPressed: (){
                              setState(() {
                                userInput+='5';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('6'),
                            onPressed: (){
                              setState(() {
                                userInput+='6';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.orangeAccent,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.minus,
                              size: 45,
                              textDirection: TextDirection.rtl,
                            ),
                            onPressed: (){
                              setState(() {
                                equalPressed();
                                userInput += '-';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('7'),
                            onPressed: (){
                              setState(() {
                                userInput+='7';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('8'),
                            onPressed: (){
                              setState(() {
                                userInput+='8';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('9'),
                            onPressed: (){
                              setState(() {
                                userInput+='9';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.orangeAccent,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.plus,
                              size: 45,
                              textDirection: TextDirection.rtl,
                            ),
                            onPressed: (){
                              setState(() {
                                equalPressed();
                                userInput += '+';

                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.orangeAccent,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.rightToBracket,
                              size: 45,
                              textDirection: TextDirection.rtl,
                            ),
                            onPressed: (){
                              exit(0);
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('0'),
                            onPressed: (){
                              setState(() {
                                userInput+='0';
                              });
                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 45),
                              foregroundColor: Colors.grey[700],
                            ),
                            child: Text('.'),
                            onPressed: (){
                              setState(() {
                                if (userInput.isNotEmpty && userInput.lastIndexOf(".") == -1) {
                                  userInput += ".";
                                }
                              });


                            }
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: 45),
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.orangeAccent
                            ),
                            child: const Icon(
                              FontAwesomeIcons.equals,
                              size: 45,
                              textDirection: TextDirection.rtl,
                            ),
                            onPressed: (){
                              setState(() {
                                equalPressed();
                              });
                            }
                        ),
                      ],
                    ),
                  )
              ),
            ),

          ],
        ),
      ),


    );
  }

  void equalPressed() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finalUserInput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    userInput = eval.toString();

  }
}

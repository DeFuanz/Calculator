import 'calculations.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Calculations calc = new Calculations();
  String enteredNum = "0";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text(
                enteredNum.toString(),
              ),
              color: Colors.amber,
              alignment: Alignment.centerRight,
              height: 50,
            ),
            Container(
              child: Text(
                enteredNum.toString(),
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              color: Colors.white,
              alignment: Alignment.topRight,
              height: 120,
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                children: [
                  TextButton(
                    onPressed: () {
                      calc.pushNum(7);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '7',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(8);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '8',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(9);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '9',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushMultiply();
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '*',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(4);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(5);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(6);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushSubtract();
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(1);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(2);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(3);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushAdd();
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushNum(0);
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushAC();
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      'AC',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushDelete();
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '<-',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      calc.pushDivide();
                      setState(() {
                        enteredNum = calc.combinednum.toString();
                      });
                    },
                    child: Text(
                      '/',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: TextButton(
                onPressed: () {
                  calc.pushCalculate();
                  setState(() {
                    enteredNum = calc.combinednum.toString();
                  });
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

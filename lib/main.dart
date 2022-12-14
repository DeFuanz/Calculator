import 'calculations.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Calculations calc = Calculations();
  String enteredNum = "0";
  String previousNum = "0";

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
                previousNum.toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              color: Colors.white,
              alignment: Alignment.bottomRight,
              height: 50,
            ),
            Container(
              child: Text(
                enteredNum.toString(),
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              color: Colors.white,
              alignment: Alignment.centerRight,
              height: 120,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                children: [
                  TextButton(
                    onPressed: () {
                      calc.pushNum(7);
                      setState(() {
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                        previousNum = calc.previousnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                        previousNum = calc.previousnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                        previousNum = calc.previousnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                        previousNum = calc.previousnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                      });
                    },
                    child: const Text(
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
                        enteredNum = calc.shownnum.toString();
                        previousNum = calc.previousnum.toString();
                      });
                    },
                    child: const Text(
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
                  calc.pushCalculate(calc.functionSelected);
                  setState(() {
                    enteredNum = calc.shownnum.toString();
                    previousNum = calc.previousnum.toString();
                  });
                },
                child: const Text(
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

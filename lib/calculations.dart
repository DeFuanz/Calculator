class Calculations {
  List<int> numbersPressed = [];
  List<int> numbersQueued = [];

  var number;
  String combinednum = "0";
  double doublenum = 0;
  int num1 = 0;
  int num2 = 0;
  int functionSelected = 0;

  void pushAC() {
    numbersPressed.clear();
    number = 0;
    combinednum = "0";
    num1 = 0;
    num2 = 0;
  }

  void pushNum(num) {
    numbersPressed.add(num);
    number = int.parse(numbersPressed.join());
    combinednum = number.toString();
  }

  void pushDelete() {
    if (numbersPressed.isNotEmpty && number != 0) {
      numbersPressed.removeLast();
      number = int.parse(numbersPressed.join());
      combinednum = number.toString();
    } else {
      numbersPressed.add(0);
      number = int.parse(numbersPressed.join());
      combinednum = number.toString();
    }
  }

  void pushMultiply() {
    num1 = number;
    number = 0;
    combinednum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 1;
  }

  void pushSubtract() {
    num1 = number;
    number = 0;
    combinednum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 2;
  }

  void pushAdd() {
    num1 = number;
    number = 0;
    combinednum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 3;
  }

  void pushDivide() {
    num1 = number;
    number = 0;
    combinednum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 4;
  }

  void pushCalculate() {
    num2 = number;

    switch (functionSelected) {
      case 1:
        {
          combinednum = (num1 * num2).toString();
        }
        break;

      case 2:
        {
          combinednum = (num1 - num2).toString();
        }
        break;

      case 3:
        {
          combinednum = (num1 + num2).toString();
        }
        break;

      case 4:
        {
          combinednum = (num1 / num2).toString();
        }
        break;

      default:
        {
          combinednum = number.toString();
        }
    }

    numbersPressed.clear();
    num1 = 0;
    num2 = 0;
  }
}

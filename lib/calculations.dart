class Calculations {
  List<int> numbersPressed = [];

  var number;
  String shownnum = "0";
  String previousnum = "0";
  double num1 = 0;
  double num2 = 0;
  int functionSelected = 0;
  int lastmethod = 0;

  void pushAC() {
    numbersPressed.clear();
    number = 0;
    shownnum = "0";
    num1 = 0;
    num2 = 0;
    previousnum = "0";
    functionSelected = 0;
  }

  void pushNum(num) {
    numbersPressed.add(num);
    num2 = double.parse(numbersPressed.join());
    shownnum = num2.toString();
  }

  void pushDelete() {
    if (numbersPressed.isNotEmpty && number != 0) {
      numbersPressed.removeLast();
      number = int.parse(numbersPressed.join());
      shownnum = number.toString();
    } else {
      numbersPressed.add(0);
      number = int.parse(numbersPressed.join());
      shownnum = number.toString();
    }
  }

  void pushMultiply() {
    // found you have to calculate first if you want to use multiple operators
    if (num1 == 0) {
      num1 = number;
    } else {
      num2 = number;
      num1 = num1 * num2;
      num2 = 0;
    }
    num2 = number;
    previousnum = num1.toString();
    number = 0;
    shownnum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 1;
  }

  void pushSubtract() {
    if (num1 == 0) {
      num1 = number;
    } else {
      num2 = number;
      num1 = num1 - num2;
      num2 = 0;
    }
    num2 = number;
    previousnum = num1.toString();
    number = 0;
    shownnum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 2;
  }

  void pushAdd() {
    if (functionSelected == 0 || functionSelected == 3){
      num1 = num1 + num2;
    } else {
      pushCalculate(functionSelected);
    }
    num2 = 0;
    previousnum = num1.toString();
    shownnum = num2.toString();
  }

  void pushDivide() {
    if (num1 == 0) {
      num1 = number;
    } else {
      num2 = number;
      num1 = num1 / num2;
      num2 = 0;
    }
    num2 = number;
    previousnum = num1.toString();
    number = 0;
    shownnum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 4;
  }

  void pushCalculate(functionSelected) {
    switch (functionSelected) {
      case 1:
        {
          num1 = num1 * num2;
        }
        break;

      case 2:
        {
          num1 = num1 - num2;
        }
        break;

      case 3:
        {
          num1 = num1 + num2;
        }
        break;

      case 4:
        {
          num1 = num1 / num2;
        }
        break;

      default:
        {
          shownnum = number.toString();
        }
    }
  }
}

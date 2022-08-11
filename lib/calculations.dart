class Calculations {
  List<int> numbersPressed = [];

  String shownnum = "0";
  String previousnum = "0";
  double num1 = 0;
  double num2 = 0;
  int functionSelected = 0;
  int lastmethod = 0;

  void pushAC() {
    numbersPressed.clear();
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
    if (numbersPressed.isNotEmpty && num1 != 0) {
      numbersPressed.removeLast();
      num1 = double.parse(numbersPressed.join());
      shownnum = num1.toString();
    } else {
      numbersPressed.add(0);
      num1 = double.parse(numbersPressed.join());
      shownnum = num1.toString();
    }
  }

  void pushMultiply() {
    if (functionSelected == 0 || functionSelected == 1) {
      if (num1 == 0) {
        num1 = 1;
      }
      num1 = num1 * num2;
    } else {
      calculatePrevious(functionSelected);
    }
    num2 = 0;
    previousnum = num1.toString();
    shownnum = num2.toString();
    numbersPressed.clear();
    functionSelected = 1;
  }

  void pushSubtract() {
    if (functionSelected == 0 || functionSelected == 2) {
      if (num1 == 0) {
        num1 = num2;
        num2 = 0;
      }
      num1 = num1 - num2;
    } else {
      calculatePrevious(functionSelected);
    }
    num2 = 0;
    previousnum = num1.toString();
    shownnum = num2.toString();
    numbersPressed.clear();
    functionSelected = 2;
  }

  void pushAdd() {
    if (functionSelected == 0 || functionSelected == 3) {
      num1 = num1 + num2;
    } else {
      calculatePrevious(functionSelected);
    }
    num2 = 0;
    previousnum = num1.toString();
    shownnum = num2.toString();
    numbersPressed.clear();
    functionSelected = 3;
  }

  void pushDivide() {
    if (functionSelected == 0 || functionSelected == 4) {
      if (num1 == 0){
        num1 = num2;
        num2 = 0;
      }
      num1 = num1 / num2;
    } else {
      calculatePrevious(functionSelected);
    }
    num2 = 0;
    previousnum = num1.toString();
    shownnum = num2.toString();
    numbersPressed.clear();
    functionSelected = 4;
  }

  void calculatePrevious(functionSelected) {
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
    }
  }

  void pushCalculate(functionSelected) {
    switch (functionSelected) {
      case 1:
        {
          num1 = num1 * num2;
          shownnum = num1.toString();
          num2 = 0;
          previousnum = num2.toString();
          numbersPressed.clear();
        }
        break;

      case 2:
        {
          num1 = num1 - num2;
          shownnum = num1.toString();
          num2 = 0;
          previousnum = num2.toString();
          numbersPressed.clear();
        }
        break;

      case 3:
        {
          num1 = num1 + num2;
          shownnum = num1.toString();
          num2 = 0;
          previousnum = num2.toString();
          numbersPressed.clear();
        }
        break;

      case 4:
        {
          num1 = num1 / num2;
          shownnum = num1.toString();
          num2 = 0;
          previousnum = num2.toString();
          numbersPressed.clear();
        }
        break;
    }
  }
}

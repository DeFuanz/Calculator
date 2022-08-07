class Calculations {
  List<int> numbersPressed = [];

  var number;
  String shownnum = "0";
  String previousnum = "0";
  double doublenum = 0;
  int num1 = 0;
  int num2 = 0;
  int functionSelected = 0;

  void pushAC() {
    numbersPressed.clear();
    number = 0;
    shownnum = "0";
    num1 = 0;
    num2 = 0;
  }

  void pushNum(num) {
    numbersPressed.add(num);
    number = int.parse(numbersPressed.join());
    shownnum = number.toString();
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
    num1 = number;
    previousnum = number.toString();
    number = 0;
    shownnum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 1;
  }

  void pushSubtract() {
    num1 = number;
    previousnum = number.toString();
    number = 0;
    shownnum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 2;
  }

  void pushAdd() {
    print(num1);
    print(number);
    if (number > 0) {
      number = num1 + number;
    } else {
      num1 = number;
    }

    previousnum = number.toString();
    shownnum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 3;
  }

  void pushDivide() {
    num1 = number;
    previousnum = number.toString();
    number = 0;
    shownnum = number.toString();
    numbersPressed.clear();
    numbersPressed.add(0);
    functionSelected = 4;
  }

  void pushCalculate() {
    num2 = number;
    previousnum = "0";

    switch (functionSelected) {
      case 1:
        {
          shownnum = (num1 * num2).toString();
        }
        break;

      case 2:
        {
          shownnum = (num1 - num2).toString();
        }
        break;

      case 3:
        {
          shownnum = (num1 + num2).toString();
        }
        break;

      case 4:
        {
          shownnum = (num1 / num2).toString();
        }
        break;

      default:
        {
          shownnum = number.toString();
        }
    }

    numbersPressed.clear();
    num1 = 0;
    num2 = 0;
  }
}

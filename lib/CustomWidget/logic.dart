String? temps = "";
String? input = "";
double result = 0.0;
String? sign;
String? sign2;
void nine() {
  temps = "${temps ?? ""}9";
  input = "${input ?? ""}9";
}

void eight() {
  temps = "${temps ?? ""}8";
  input = "${input ?? ""}8";
}

void seven() {
  temps = "${temps ?? ""}7";
  input = "${input ?? ""}7";
}

void six() {
  temps = "${temps ?? ""}6";
  input = "${input ?? ""}6";
}

void five() {
  temps = "${temps ?? ""}5";
  input = "${input ?? ""}5";
}

void four() {
  temps = "${temps ?? ""}4";
  input = "${input ?? ""}4";
}

void three() {
  temps = "${temps ?? ""}3";
  input = "${input ?? ""}3";
}

void two() {
  temps = "${temps ?? ""}2";
  input = "${input ?? ""}2";
}

void one() {
  temps = "${temps ?? ""}1";
  input = "${input ?? ""}1";
}

void zero() {
  temps = "${temps ?? ""}0";
  input = "${input ?? ""}0";
}

void dot() {
  temps = "${temps ?? ""}0.";
  input = "${input ?? ""}.";
}

void equals() {
  if (sign == null) {
    result = double.parse(temps.toString());
  } else {
    if (sign == '+') {
      result = result + double.parse(temps.toString());
    } else if (sign == '-') {
      result = result - double.parse(temps.toString());
    } else if (sign == '*') {
      result = result * double.parse(temps.toString());
    } else if (sign == '/') {
      result = result / double.parse(temps.toString());
    } else if (sign == '%') {
      result = result * double.parse(temps.toString()) / 100;
    }
  }
  sign = sign2;
}

void equal() {
  equals();
}

void cTemps() => temps = "";
void add() {
  input = "${input ?? ""}+";
  sign2 = '+';
  equals();
  cTemps();
}

void sub() {
  input = "${input ?? ""}-";
  sign2 = '-';
  equals();
  cTemps();
}

void mul() {
  input = "${input ?? ""}*";
  sign2 = '*';
  equals();
  cTemps();
}

void div() {
  input = "${input ?? ""}/";
  sign2 = '/';
  equals();
  cTemps();
}

void per() {
  input = "${input ?? ""}%";
  sign2 = '%';
  equals();
  cTemps();
}

void ac() {
  result = 0;
  temps = "";
  input = "";
}

void bs() {}

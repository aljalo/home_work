import 'dart:io';

// دالة الجمع مع معاملات اختيارية
double add(List<double> numbers) {
  return numbers.reduce((a, b) => a + b);
}

// دالة الطرح
double subtract(double a, double b) {
  return a - b;
}

// دالة الضرب مع معاملات اختيارية
double multiply(List<double> numbers) {
  return numbers.reduce((a, b) => a * b);
}

// دالة القسمة
double divide(double a, double b) {
  if (b == 0) {
    throw Exception("Cannot divide by zero");
  }
  return a / b;
}

void main() {
  // قراءة الأرقام من المستخدم
  print("Enter the first number:");
  var input1 = stdin.readLineSync();
  var number1 = double.parse(input1!);

  print("Enter the second number:");
  var input2 = stdin.readLineSync();
  var number2 = double.parse(input2!);

  // اختبار العمليات الحسابية
  print("Addition: ${add([number1, number2])}");
  print("Subtraction: ${subtract(number1, number2)}");
  print("Multiplication: ${multiply([number1, number2])}");

  try {
    print("Division: ${divide(number1, number2)}");
  } catch (e) {
    print(e.toString());
  }

  // استخدام المعاملات الاختيارية في الجمع والضرب
  print("\nOptional Parameters Example:");
  print("Addition of multiple numbers: ${add([number1, number2, 10, 20])}");
  print("Multiplication of multiple numbers: ${multiply([
        number1,
        number2,
        3,
        2
      ])}");
}

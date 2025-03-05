import 'dart:math';
import 'loan.dart';

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
    : super(borrowerName, loanAmount, loanAmount > 500000 ? 9.5 : 8.0);

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = (interestRate / 100) / 12;
    return (loanAmount * monthlyRate) /
        (1 - (1 / pow(1 + monthlyRate, months)));
  }
}

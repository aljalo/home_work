import 'dart:math';

import 'loan.dart';

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
    : super(borrowerName, loanAmount, 7.0);

  @override
  double calculateMonthlyInstallment(int months) {
    double effectiveLoanAmount =
        loanAmount > 50000 ? loanAmount * 1.02 : loanAmount;
    double monthlyRate = (interestRate / 100) / 12;
    return (effectiveLoanAmount * monthlyRate) /
        (1 - (1 / pow(1 + monthlyRate, months)));
  }
}

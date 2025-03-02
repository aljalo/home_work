import 'loan.dart';

class LoanProcessingSystem {
  List<Loan> loans = [];

  // إضافة قرض إلى النظام
  void applyLoan(Loan loan) {
    loans.add(loan);
    print(
      "${loan.borrowerName} has applied for a loan of \$${loan.loanAmount}",
    );
  }

  // حساب الأقساط الشهرية لجميع القروض
  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
        "Monthly installment for ${loan.borrowerName}: \$${installment.toStringAsFixed(2)}",
      );
    }
  }
}

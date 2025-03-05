abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan(this.borrowerName, this.loanAmount, this.interestRate);

  // دالة لحساب القسط الشهري
  double calculateMonthlyInstallment(int months);
}

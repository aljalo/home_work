import 'car_loan.dart';
import 'home_loan.dart';
import 'loan_processing_system.dart';
import 'personal_loan.dart';

void main() {
  LoanProcessingSystem system = LoanProcessingSystem();

  system.applyLoan(PersonalLoan("Ali", 20000));
  system.applyLoan(HomeLoan("Sara", 600000));
  system.applyLoan(CarLoan("Ahmed", 55000));

  system.calculateInstallments(24);
}

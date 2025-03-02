/*
Bank Loan Processing System
Abstract Class: Loan
Create an abstract class Loan with the following properties and methods:
- borrowerName (String)
- loanAmount (double)
- interestRate (double)
- Abstract method: double calculateMonthlyInstallment(int months).
Loan Subclasses
Three types of loans should be implemented:
- PersonalLoan: Has a fixed 10% interest rate.
- HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
- CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee.
LoanProcessingSystem Class
Create a LoanProcessingSystem class that:
- Stores a list of loans.
- Provides methods to:
- applyLoan(Loan loan): Adds a loan application to the system.
- calculateInstallments(int months): Calculates the monthly installment for all loans.
*/
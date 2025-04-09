
abstract class Loan {
    String borrowerName;
    double loanAmount;
    double interestRate;

  Loan({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate,
  });

  double calculateMonthlyInstallment(int months);
}


class PersonalLoan extends Loan {
  PersonalLoan({
    required super.borrowerName,
    required super.loanAmount,
  }) : super(interestRate: 0.10);

  @override
  double calculateMonthlyInstallment(int months) {
    double total = loanAmount + (loanAmount * interestRate);
    return total / months;
  }
}


class HomeLoan extends Loan {
  HomeLoan({
    required super.borrowerName,
    required super.loanAmount,
  }) : super(
          interestRate: loanAmount > 500000 ? 0.095 : 0.08,
        );

  @override
  double calculateMonthlyInstallment(int months) {
    double total = loanAmount + (loanAmount * interestRate);
    return total / months;
  }
}


class CarLoan extends Loan {
  CarLoan({
    required super.borrowerName,
    required super.loanAmount,
    super .interestRate= 0.07
  }) ;

  @override
  double calculateMonthlyInstallment(int months) {
    double fee = loanAmount > 50000 ? loanAmount * 0.02 : 0;
    double total = loanAmount + (loanAmount * interestRate) + fee;
    return total / months;
  }
}

// LoanProcessingSystem
class LoanProcessingSystem {
    List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
          'Borrower: ${loan.borrowerName}, Monthly Installment: ${installment.toStringAsFixed(2)}');
    }
  }
}

// الدالة الرئيسية
void main() {
  LoanProcessingSystem system = LoanProcessingSystem();

  system.applyLoan(PersonalLoan(borrowerName: "Ahmed", loanAmount: 100000));
  system.applyLoan(HomeLoan(borrowerName: "Mona", loanAmount: 600000));
  system.applyLoan(CarLoan(borrowerName: "Youssef", loanAmount: 70000));

  system.calculateInstallments(12);
}
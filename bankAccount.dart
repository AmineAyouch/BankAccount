class BankAcount {
  final String owner;
  double _balance;
  BankAcount(this.owner, [double initailbalance = 0])
    : _balance = initailbalance;

  double get balance => _balance;

  void diposite(double amount) {
    if (!amount.isFinite || amount < 0) {
      throw ArgumentError("Deposit must be positive and finite'");
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (!amount.isFinite || amount <= 0) {
      throw ArgumentError("'Withdraw must be positive and finite");
    }
    if (amount > _balance) {
      throw StateError("'Withdraw must be positive and finite $_balance");
    }
    _balance -= amount;
  }

  @override
  String tostring() => "bankacount(owner:$owner,balance :$balance)";
}

void main() {
  BankAcount user1 = BankAcount("amine");
  user1.diposite(200);
  print(user1.tostring());
}

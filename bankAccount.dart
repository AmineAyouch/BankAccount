class Bankaccount {
  final String owner;
  double _balance = 0;
  Bankaccount(this.owner, double initialbalance) : _balance = initialbalance;
  set diposite(double amount) {
    if (!amount.isFinite || amount < 0) {
      print("sorry");
    } else {
      _balance += amount;
    }
  }

  set withdraw(double amount) {
    if (!amount.isFinite || amount > _balance || amount < 0) {
      print("sorry ");
    } else {
      _balance -= amount;
    }
  }

  get balance => _balance;

  @override
  String toString() {
    return "your name is $owner and your balance is $_balance";
  }
}

void main() {
  Bankaccount user1 = Bankaccount("amine", 400);
  user1.diposite = 200;
  print(user1.balance);
  user1.withdraw = 800;
  user1.toString();
}

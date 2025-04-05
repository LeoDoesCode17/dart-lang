import 'dart:math';

void main() {}

//problem 1 : Basic Exception
//use : var res = safeDivide(10, 0);
safeDivide(int a, int b) {
  try {
    return a ~/ b;
  } catch (e) {
    return 'Error: $e';
  }
}

//problem 2 : Specific Exception Types
//use: var res = parseToInt('123);
parseToInt(String number) {
  try {
    return int.parse(number);
  } catch (e) {
    return 'Invalid number format: $number';
  }
}

//problem 3 : Custom Exception
class BankAccount {
  double balance = 0.0;
  String name = '';
  BankAccount({double balance = 0.0, required String name}) {
    this.balance = balance;
    this.name = name;
  }
  void withdraw(double amount) {
    if (amount > this.balance) {
      throw InsufficientFundsException(
        "${this.name} doesn't have sufficient funds, with amount ${this.balance}",
      );
    }
    this.balance -= amount;
    print('${this.name} withdrew $amount, remaining balance: ${this.balance}');
  }
}

//custom exception
class InsufficientFundsException implements Exception {
  final String message;
  InsufficientFundsException(this.message);
  String toString() => 'InsufficientFundsException: $message';
}

//use: customerActivity();
void customerActivity() {
  BankAccount account1 = BankAccount(name: 'Leonardo', balance: 200);
  BankAccount account2 = BankAccount(name: 'Madara');
  try {
    account1.withdraw(100);
  } catch (e) {
    print(e);
  }
  try {
    account2.withdraw(100);
  } catch (e) {
    print(e);
  }
}

//problem 4 : Finally Block
//for this function the exception thrown is Error: type 'String' is not a subtype of type 'Uri' in type cast
//use : performReadFile(filePath)
void performReadFile(String filePath) {
  try {
    print('Opening file...');
    if (filePath.isEmpty) throw Exception('Invalid file path');
    print('Reading contents from $filePath');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Closing file...');
  }
}


//problem 5 : Re-throwing exceptions
/*
Use : 
  try {
    performRethrow();
  } catch (e) {
    print('Error: $e');
  }
*/
void performRethrow() {
  var random = Random();
  try {
    int res = 1 ~/ random.nextInt(2);
    print('Result: $res');
  } catch (e) {
    print(e);
    if (!random.nextBool()) {
      rethrow;
    }
  }
}

//problem 6 : Combine multiple catch blocks
//use: processData(data: data);
/*
Use using performAction function
  performAction(() {
    processData();
  });
  performAction(() {
    processData(data: 'Leonardo');
  });
  performAction(() {
    processData(data: '123');
  });
*/
void processData({String? data}) {
  if (data == null) {
    throw StateError('Data must be non-null');
  } else {
    int? number = int.tryParse(data);
    if (number == null) {
      throw FormatException('Invalid number format: $data');
    } else {
      print('Processed data: $number');
    }
  }
}

void performAction(Function action) {
  try {
    action();
  } catch (e) {
    print('Error: $e');
  }
}

import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/new_transaction.dart';
import 'package:personal_expenses/widgets/transaction_list.dart';
import 'package:personal_expenses/models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New T shirt', amount: 69.45, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'New gamePad', amount: 10.13, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'New shoes', amount: 15.45, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(_userTransaction),
      ],
    );
  }
}

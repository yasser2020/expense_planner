import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transctions.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTranscations = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.9, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceris',
        amount: 16.63,
        date: DateTime.now()),
  ];

  void _addNewTransaction(String txttitle, double txtamount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txttitle,
        amount: txtamount,
        date: DateTime.now());
    setState(() {
      _userTranscations.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTranscations),
      ],
    );
  }
}

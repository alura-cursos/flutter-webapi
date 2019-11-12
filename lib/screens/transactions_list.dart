import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Transaction transaction = transactions[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(
                transaction.value.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                transaction.contact.accountNumber.toString(),
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}

import 'contact.dart';

class Transaction {
  final double value;
  final Contact contact;

  Transaction(
      this.value,
      this.contact,
      );

  @override
  String toString() {
    return 'Transaction{value: $value, contact: $contact}';
  }

}
import 'package:bytebank/models/contacts.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should_return_value_when_create_transaction', (){
    final transaction = Transaction('', 200, Contact(0, '', 0));
    expect(transaction.value, 200);
  });

  test('Should_show_error_when_create_transaction_with_value_less_then_zero', (){
    expect(() => Transaction('', 0, Contact(0, '', 0)), throwsAssertionError);
  });
}
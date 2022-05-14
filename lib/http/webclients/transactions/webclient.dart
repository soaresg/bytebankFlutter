// ignore_for_file: body_might_complete_normally_nullable, prefer_const_constructors

import 'dart:convert';

import 'package:http/http.dart';

import '../../../models/transaction.dart';
import '../../webclient.dart';

class TransactionWebClient {
  Future<List<Transaction>> findAll() async {
    final Response response = await client.get(url);
    final List<dynamic> decodedJson = jsonDecode(response.body);

    return decodedJson
        .map((dynamic json) => Transaction.fromJson(json))
        .toList();
  }

  Future<Transaction?>? save(Transaction transaction, String password) async {
    final String transactionJson = jsonEncode(transaction.toJson());

    await Future.delayed(Duration(seconds: 3));

    final Response response = await client.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "password": password,
      },
      body: transactionJson,
    );

    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    }

    throw HttpException(_getMessage(response.statusCode));
  }

  String? _getMessage(int statusCode) {
    if (_statusCodeResponses.containsKey(statusCode)) {
      return _statusCodeResponses[statusCode];
    }

    return 'Unknown Error';
  }

  static final Map<int, String> _statusCodeResponses = {
    400: 'There was an error submitting the transaction',
    401: 'Authentication failed',
    409: 'Transaction already exists',
  };
}

class HttpException implements Exception {
  final String? message;

  HttpException(this.message);
}

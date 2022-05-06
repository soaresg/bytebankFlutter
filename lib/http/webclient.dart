// ignore_for_file: prefer_const_constructors

import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging-interceptor.dart';

final Uri url = Uri.http('192.168.100.32:8080', 'transactions');

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: Duration(seconds: 1),
);

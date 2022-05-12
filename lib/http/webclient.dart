// ignore_for_file: prefer_const_constructors

import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging-interceptor.dart';

final Uri url = Uri.http('192.168.100.32:8080', 'transactions');
final Uri messagesUri = Uri.http("gist.githubusercontent.com", "soaresg/21dacf2f5a0fd80d173518ded9245574/raw/7d76490a0142ab4ba417e41b99340432f9c2b709/");

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: Duration(seconds: 5),
);

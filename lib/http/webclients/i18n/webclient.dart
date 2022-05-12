// ignore_for_file: body_might_complete_normally_nullable, prefer_const_constructors, unused_field

import 'dart:convert';
import 'package:http/http.dart';

import '../../webclient.dart';

class I18NWebClient {
  final String? _viewKey;

  I18NWebClient(this._viewKey);

  Future<Map<String, dynamic>> findAll() async {
    final Uri dashboardUri = Uri.http("gist.githubusercontent.com", "soaresg/21dacf2f5a0fd80d173518ded9245574/raw/45ccbf7572aafc10c7581771a6bf361cdb15ec70/$_viewKey.json");

    final Response response = await client.get(dashboardUri);
    final Map<String, dynamic> decodedJson = jsonDecode(response.body);

    return decodedJson;
  }
}

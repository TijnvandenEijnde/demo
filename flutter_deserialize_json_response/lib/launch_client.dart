import 'dart:convert';

import 'package:flutter_deserialize_json_response/models/launch.dart';
import 'package:http/http.dart' as http;

class LaunchClient {
  LaunchClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<Launch> getLaunch() async {
    final request = Uri.https('api.spacexdata.com', 'v5/launches/latest');
    final response = await _httpClient.get(request);
    final bodyJson = jsonDecode(response.body) as Map<String, dynamic>;

    return Launch.fromJson(bodyJson);
  }

  Future<List<Launch>> getLaunches() async {
    final request = Uri.https('api.spacexdata.com', 'v5/launches');
    final response = await _httpClient.get(request);
    final bodyJson = jsonDecode(response.body) as List;

    return bodyJson
        .map((json) => Launch.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
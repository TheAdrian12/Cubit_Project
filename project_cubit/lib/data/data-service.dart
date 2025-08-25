import 'dart:convert';
import 'package:flutter/services.dart';

class DataService {
  Future<Map<String, dynamic>> loadData() async {
    final String response =
        await rootBundle.loadString('assets/data_service.json');
    return json.decode(response);
  }
}

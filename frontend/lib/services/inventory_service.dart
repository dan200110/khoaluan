import 'dart:convert';

import 'package:flutter_medical_management_project/config.dart';
import 'package:flutter_medical_management_project/models/inventory.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class InventoryService {
  Future<List<InventoryModel>> getAllInventory() async {
    final response = await http.get(Uri.parse('$BASE_URL/api/inventory'));
    if (response.statusCode == 200) {
      Map jsonResponse = jsonDecode(response.body);
      List<dynamic> parsedListJson = jsonResponse["inventorys"];
      print(parsedListJson);
      List<InventoryModel> result = List<InventoryModel>.from(parsedListJson
          .map<InventoryModel>((dynamic i) => InventoryModel.fromJson(i)));
      return result;
    } else {
      throw Exception(response.body);
    }
  }
}

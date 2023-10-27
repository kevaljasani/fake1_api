import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class controller extends ChangeNotifier {
  List l = [];

  get() async {
    var url = Uri.https('https://fakestoreapi.com/products');
    var response = await http.get(url);
    l = jsonDecode(response.body);
    notifyListeners();
  }
}

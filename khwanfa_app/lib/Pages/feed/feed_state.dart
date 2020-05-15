
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:khwanfaapp/models/Products.dart';


class FeedState{
  var _all = List<Products>();

  Future<List<Products>> loadData() async {
    final String apiUrl = "http://10.0.2.2:8000/api/products";
    final response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final jsonStr = json.decode(response.body)['data'];
      print(jsonStr);
      _all.clear();
      jsonStr.forEach((v) {
        final tmpData = Products.fromJson(v);
        _all.add(tmpData);
//          print(products_list);
      });
        return _all;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
var feedState = FeedState();
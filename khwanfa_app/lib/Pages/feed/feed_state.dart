
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:khwanfaapp/models/Products.dart';


class FeedState{
  var _all = List<Products>();
  List<Products> products;

//  Future<String> loadData() async {
//    final response = rootBundle.loadString('json/products.json');
//    print(response);
//    response.then((Value){
//      products = productsFromJson(Value);
//      print(products.length);
//    });
//  }

  Future<List<Products>> loadData() async {
    final response = await http.get('https://jsonplaceholder.typicode.com/photos');
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final jsonStr = json.decode(response.body);
//      print(response.body);
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
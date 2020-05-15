
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:khwanfaapp/models/Products.dart';
import 'package:rxdart/rxdart.dart';


class ProductsItem_state{
  var _all = List<Products>();

  var _list = BehaviorSubject<List<Products>>();

  Stream<List<Products>> get list => _list.stream;
  get all => _all;

  _update() => _list.add(_all);

  Future<List<Products>> loadData() async {
    final String apiUrl = "http://10.0.2.2:8000/api/products";
    final response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final jsonStr = json.decode(response.body)['data'];
//      print(response.body);
      _all.clear();
      jsonStr.forEach((v) {
        final tmpData = Products.fromJson(v);
        _all.add(tmpData);
      });
      _update();
      return _all;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
var ProductsItem_State = ProductsItem_state();
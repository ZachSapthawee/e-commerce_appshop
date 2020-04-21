// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  int productId;
  String title;
  String detail;
  String cast;
  String url;
  String thumbnailUrl;
  String typeId;
  String shopId;

  Product({
    this.productId,
    this.title,
    this.detail,
    this.cast,
    this.url,
    this.thumbnailUrl,
    this.typeId,
    this.shopId,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    productId: json["product_Id"],
    title: json["title"],
    detail: json["detail"],
    cast: json["cast"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
    typeId: json["type_id"],
    shopId: json["shop_id"],
  );

  Map<String, dynamic> toJson() => {
    "product_Id": productId,
    "title": title,
    "detail": detail,
    "cast": cast,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
    "type_id": typeId,
    "shop_id": shopId,
  };
}

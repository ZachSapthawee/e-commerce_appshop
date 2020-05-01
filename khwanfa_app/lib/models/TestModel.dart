//// To parse this JSON data, do
////
////     final products = productsFromJson(jsonString);
//
//import 'dart:convert';
//
//List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));
//
//String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
//class Products {
//  int albumId;
//  int id;
//  String title;
//  String url;
//  String thumbnailUrl;
//
//  Products({
//    this.albumId,
//    this.id,
//    this.title,
//    this.url,
//    this.thumbnailUrl,
//  });
//
//  factory Products.fromJson(Map<String, dynamic> json) => Products(
//    albumId: json["albumId"],
//    id: json["id"],
//    title: json["title"],
//    url: json["url"],
//    thumbnailUrl: json["thumbnailUrl"],
//  );
//
//  Map<String, dynamic> toJson() => {
//    "albumId": albumId,
//    "id": id,
//    "title": title,
//    "url": url,
//    "thumbnailUrl": thumbnailUrl,
//  };
//}

// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  int id;
  String productName;
  String productDetail;
  int typeId;
  String typeName;
  int shopId;
  String shopName;
  int cost;
  int status;
  int saleprice;
  String imagename;

  Products({
    this.id,
    this.productName,
    this.productDetail,
    this.typeId,
    this.typeName,
    this.shopId,
    this.shopName,
    this.cost,
    this.status,
    this.saleprice,
    this.imagename,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    id: json["id"],
    productName: json["product_name"],
    productDetail: json["product_detail"],
    typeId: json["type_id"],
    typeName: json["type_name"],
    shopId: json["shop_id"] == null ? null : json["shop_id"],
    shopName: json["shop_name"] == null ? null : json["shop_name"],
    cost: json["cost"],
    status: json["status"],
    saleprice: json["saleprice"],
    imagename: json["imagename"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_name": productName,
    "product_detail": productDetail,
    "type_id": typeId,
    "type_name": typeName,
    "shop_id": shopId == null ? null : shopId,
    "shop_name": shopName == null ? null : shopName,
    "cost": cost,
    "status": status,
    "saleprice": saleprice,
    "imagename": imagename,
  };
}

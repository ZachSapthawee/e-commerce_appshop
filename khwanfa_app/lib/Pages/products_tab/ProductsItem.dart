import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khwanfaapp/Pages/function/Part_Tabitem.dart';

import 'package:khwanfaapp/models/Products.dart';
import 'package:khwanfaapp/widgets/BuildCard.dart';
import 'package:khwanfaapp/widgets/Carousel.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

import '../ShowItem.dart';
import '../Cart.dart';
import 'ProductsItem_state.dart';

class ProductsItem extends StatefulWidget {
  @override
  _ProductsItemState createState() => _ProductsItemState();
}

class _ProductsItemState extends State<ProductsItem> {
//  Future<Products> futureProducts;

//  final String apiUrl = "http://localhost:8000/api/products";
  ScrollController scrollController = ScrollController();
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    ProductsItem_State.loadData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyBuilder(),

//      body: Container(
//        child: ListView(
//          shrinkWrap: true,
//          children: <Widget>[
////            gridviewBuilder(),
//            Expanded(
//              child: gridviewBuilder(),
//            ),
//            Corousel(),

//            _buildAdslide(),
//            _buildnavbar(),
//            _buildCard(),

//          ListTileShimmer(
//            // isPurplishMode: true,
//            isRectBox: true,
//            isDisabledButton: true,
//          ),
//          Divider(),
//          YoutubeShimmer(
////               isPurplishMode: true,
//            // isDarkMode: true,
//            isRectBox: true,
//
//          ),
//          Divider(),
//          VideoShimmer(
//            // isPurplishMode: true,
//            // isDarkMode: true,
//          ),
//          Divider(),
//          ProfileShimmer(
//            // isPurplishMode: true,
//            isRectBox: true,
//            hasBottomLines: true,
//            // isDarkMode: true,
//          ),
/*===================================================================================*/

/*============================================================================*/


//            FutureBuilder<List<Products>>(
//                future: ProductsItem_State.loadData(),
//                builder: (BuildContext context, AsyncSnapshot snapshot) {
//                  print('testt11  $snapshot');
//                  if (snapshot.hasData) {
//                    return GridView.count(
//                      crossAxisCount: 2,
//                      shrinkWrap: true,
//                      scrollDirection: Axis.vertical,
//                      physics: NeverScrollableScrollPhysics(),
//                      childAspectRatio: 0.8,
//                      children: List.generate(snapshot.data.length, (index) {
//                        print(
//                            'project snapshot data length is: ${snapshot.data.length}');
//                        var v = snapshot.data[index];
//                        print(snapshot.data);
//                        return buildCard(
//                          productName: v.productName,
//                          productDetail: v.productDetail,
//                          cost: v.cost,
//                          imagename: v.imagename,
//                        );
//                      }),
//                    );
//                  } else if (snapshot.hasError) {
//                    Row(
//                      children: <Widget>[
//                        Icon(
//                          Icons.error_outline,
//                          color: Colors.red,
//                          size: 60,
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.only(top: 16),
//                          child: Text('Error: ${snapshot.error}'),
//                        )
//                      ],
//                    );
//                  }
//                  return Center(
////                      child: placeholderload(),
//                      );
//                }),

/*         =====================================================================*/
//          ],
//        ),
//      ),
    );
  }

  Widget bodyBuilder() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
              child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('เลือกซื้อสินค้า OTOP และ '),
                      Text('สินค้า จาก KHWANFA ได้เลยค่ะ'),
                    ],
                  )
              )
          ),
          gridviewBuilder(),
        ],
      ),
    );
  }

  Widget gridviewBuilder() {
    return StreamBuilder<List<Products>>(
        stream: ProductsItem_State.list,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print('products_test  $snapshot');
          if (snapshot.hasData) {
            return GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
//                primary: false,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.8,
              children: List.generate(snapshot.data.length, (index) {
                print(
                    'project snapshot data length is: ${snapshot.data.length}');
                var v = snapshot.data[index];
                print(snapshot.data);
                return buildCard(
                  productName: v.productName,
                  productDetail: v.productDetail,
                  cost: v.cost,
                  imagename: v.imagename,
                );
              }),
            );
          } else if (snapshot.hasError) {
            Row(
              children: <Widget>[
                Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                )
              ],
            );
          }
          return Center(
//                      child: placeholderload(),
          );
        });
  }

  Widget placeholderload() {
    return Row(
      children: <Widget>[
        ListTileShimmer(
          // isPurplishMode: true,
          isRectBox: true,
        ),
        Divider(),
        YoutubeShimmer(
//               isPurplishMode: true,
          // isDarkMode: true,
          isRectBox: true,
        ),
        Divider(),
        VideoShimmer(
            // isPurplishMode: true,
            // isDarkMode: true,
            ),
        Divider(),
        ProfileShimmer(
          // isPurplishMode: true,
          isRectBox: true,
          hasBottomLines: true,
          // isDarkMode: true,
        ),
      ],
    );
  }
}



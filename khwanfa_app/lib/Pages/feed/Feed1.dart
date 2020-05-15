import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khwanfaapp/Pages/function/Part_Tabitem.dart';

import 'package:khwanfaapp/models/Products.dart';
import 'package:khwanfaapp/widgets/BuildCard.dart';
import 'package:khwanfaapp/widgets/Carousel.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';
import 'package:khwanfaapp/widgets/Search_widget.dart';
import 'package:khwanfaapp/widgets/post_feed_model1.dart';

import '../ShowItem.dart';
import '../Cart.dart';
import '../testview.dart';
import 'feed_state.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
//  Future<Products> futureProducts;

//  final String apiUrl = "http://localhost:8000/api/products";
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    feedState.loadData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Search(),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
//            Corousel(),

          FutureBuilder<List<Products>>(
              future: feedState.loadData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                print('testt11  $snapshot');
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index){
                      var v = snapshot.data[index];
                      return Post_feed(
                        imagename: v.imagename,
                        textDetail: v.productDetail,
                      );
                    }
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
              }),


//                future: feedState.loadData(),
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
//                  );
//                }),


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
//                future: feedState.loadData(),
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
//                  );
//                }),

/*         =====================================================================*/
          ],
        ),
      ),
    );
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



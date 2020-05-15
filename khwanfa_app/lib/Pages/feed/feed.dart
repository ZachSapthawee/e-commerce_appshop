//import 'package:cached_network_image/cached_network_image.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:khwanfaapp/Pages/function/Part_Tabitem.dart';
//
//import 'package:khwanfaapp/models/Products.dart';
//import 'package:khwanfaapp/widgets/BuildCard.dart';
//import 'package:khwanfaapp/widgets/Carousel.dart';
//import 'package:flutter_shimmer/flutter_shimmer.dart';
//
//import '../ShowItem.dart';
//import '../Cart.dart';
//import '../testview.dart';
//import 'feed_state.dart';
//
//class FeedPage extends StatefulWidget {
//  @override
//  _FeedPageState createState() => _FeedPageState();
//}
//
//class _FeedPageState extends State<FeedPage> {
////  Future<Products> futureProducts;
//
////  final String apiUrl = "http://localhost:8000/api/products";
//  ScrollController scrollController = ScrollController();
//
//  @override
//  void initState() {
//    super.initState();
//    feedState.loadData();
//  }
//
//  @override
//  void dispose() {
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Container(
//          width: MediaQuery
//              .of(context)
//              .size
//              .width,
//          child: Row(
//            children: <Widget>[
//              Expanded(
//                flex: 1,
//                child: Icon(Icons.search, color: Colors.white),
//              ),
//              Expanded(
//                flex: 10,
//                child: Container(
//                  margin: EdgeInsets.only(
//                      left: 10.0, right: 0.0, top: 10.0, bottom: 10.0),
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.circular(12),
//                  ),
//                  child: TextField(
//                    decoration: InputDecoration(
//                      hintStyle: TextStyle(fontSize: 15),
//                      hintText: 'ค้นหา',
////                      suffixIcon: Icon(Icons.search),
//                      border: InputBorder.none,
//                      isDense: true,
//                      contentPadding: EdgeInsets.only(
//                          left: 10.0, right: 10.0, top: 9.5, bottom: 9.5),
//                    ),
//                    cursorColor: Colors.black,
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//        backgroundColor: Colors.red[900],
//      ),
//      body: Container(
//        child: ListView(
//          shrinkWrap: true,
//          children: <Widget>[
//            Corousel(),
//
////            _buildAdslide(),
////            _buildnavbar(),
////            _buildCard(),
//
//
////          ListTileShimmer(
////            // isPurplishMode: true,
////            isRectBox: true,
////            isDisabledButton: true,
////          ),
////          Divider(),
////          YoutubeShimmer(
//////               isPurplishMode: true,
////            // isDarkMode: true,
////            isRectBox: true,
////
////          ),
////          Divider(),
////          VideoShimmer(
////            // isPurplishMode: true,
////            // isDarkMode: true,
////          ),
////          Divider(),
////          ProfileShimmer(
////            // isPurplishMode: true,
////            isRectBox: true,
////            hasBottomLines: true,
////            // isDarkMode: true,
////          ),
///*===================================================================================*/
//
///*============================================================================*/
//
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
//
///*         =====================================================================*/
//
//
////            Container(
//////              height: MediaQuery.of(context).size.height,
////              width: MediaQuery.of(context).size.width,
////              child: FutureBuilder<List<Products>>(
////                future: feedState.loadData(),
////                builder: (context, snapshot) {
////                  print(snapshot);
////                  return GridView.count(
////                    controller: scrollController,
////                    crossAxisCount: 2,
////                    shrinkWrap: true,
////                    scrollDirection: Axis.vertical,
////                    physics: NeverScrollableScrollPhysics(),
////                    childAspectRatio: 0.8,
////                    children: List.generate(10, (index) {
////                      var v = products_list[index];
////                      return Card(
////                        child: InkWell(
////                          splashColor: Colors.deepPurple.withAlpha(30),
////                          onTap: () {
////                            Navigator.push(
////                              context,
////                              MaterialPageRoute(builder: (context) => Shoeitem()),
////                            );
////                          },
////                          child: Column(
////                            children: <Widget>[
////                              Container(
////                                width: 110,
////                                height: 110,
////                                margin: EdgeInsets.only(
////                                    top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
////                                child: CachedNetworkImage(
////                                  imageUrl:
////                                  'https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016',
//////                                imageUrl: v.url,
////                                  imageBuilder: (context, imageProvider) => Container(
////                                    decoration: BoxDecoration(
////                                      image: DecorationImage(
////                                          image: imageProvider,
////                                          fit: BoxFit.cover,
////                                          colorFilter: ColorFilter.mode(
////                                              Colors.deepPurple, BlendMode.colorBurn)),
////                                    ),
////                                  ),
////                                  placeholder: (context, url) => CircularProgressIndicator(),
////                                  errorWidget: (context, url, error) => Icon(Icons.error),
////                                ),
////                              ),
////                              Expanded(
////                                child: Container(
////                                  margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
////                                  child: Column(
////                                    children: <Widget>[
////                                      SizedBox(width: 5),
////                                      Container(
////                                        alignment: Alignment.topLeft,
////                                        child: Text(
////                                          'dswa',
//////                                          v.title,
////                                          overflow: TextOverflow.ellipsis,
////                                          style: TextStyle(
////                                            fontSize: 14,
////                                            fontWeight: FontWeight.w500,
////                                          ),
////                                        ),
////                                      ),
////                                      Container(
////                                        margin: EdgeInsets.only(top: 10),
////                                        alignment: Alignment.topRight,
////                                        child: Text(
//////                                          v.cost,
////                                          '00.0',
////                                          style: TextStyle(
////                                            color: Colors.red,
////                                          ),
////                                        ),
////                                      ),
////                                    ],
////                                  ),
////                                ),
////                              ),
////                            ],
////                          ),
////                        ),
////                      );
////                    }),
////                  );
////                },
////              ),
////            ),
//          ],
//        ),
//      ),
//    );
//  }
//
//  Widget placeholderload() {
//    return Row(
//      children: <Widget>[
//        ListTileShimmer(
//          // isPurplishMode: true,
//          isRectBox: true,
//        ),
//        Divider(),
//        YoutubeShimmer(
////               isPurplishMode: true,
//          // isDarkMode: true,
//          isRectBox: true,
//        ),
//        Divider(),
//        VideoShimmer(
//          // isPurplishMode: true,
//          // isDarkMode: true,
//        ),
//        Divider(),
//        ProfileShimmer(
//          // isPurplishMode: true,
//          isRectBox: true,
//          hasBottomLines: true,
//          // isDarkMode: true,
//        ),
//      ],
//    );
//  }
//
//  Widget CardBuilder() {}
//
//  Widget _buildCard() {
//    return Container(
//      height: MediaQuery
//          .of(context)
//          .size
//          .height,
//      width: MediaQuery
//          .of(context)
//          .size
//          .width,
//      child: FutureBuilder(
////      future: fetchProducts(),
//        builder: (context, AsyncSnapshot snapshot) {
////        print('test $snapshot');
//          if (snapshot.hasData) {
//            return GridView.count(
//              crossAxisCount: 2,
//              shrinkWrap: true,
//              scrollDirection: Axis.vertical,
//              physics: NeverScrollableScrollPhysics(),
//              childAspectRatio: 0.8,
//              children: List.generate(10, (index) {
//                var v = snapshot.data[index];
//                return Card(
//                  child: InkWell(
//                    splashColor: Colors.deepPurple.withAlpha(30),
//                    onTap: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => Shoeitem()),
//                      );
//                    },
////                  https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016
//                    child: Column(
//                      children: <Widget>[
//                        Container(
//                          width: 110,
//                          height: 110,
//                          margin: EdgeInsets.only(
//                              top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
//                          child: CachedNetworkImage(
//                            imageUrl:
//                            "https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016",
//                            imageBuilder: (context, imageProvider) =>
//                                Container(
//                                  decoration: BoxDecoration(
//                                    image: DecorationImage(
//                                        image: imageProvider,
//                                        fit: BoxFit.cover,
//                                        colorFilter: ColorFilter.mode(
//                                            Colors.deepPurple,
//                                            BlendMode.colorBurn)),
//                                  ),
//                                ),
//                            placeholder: (context, url) =>
//                                CircularProgressIndicator(),
//                            errorWidget: (context, url, error) =>
//                                Icon(Icons.error),
//                          ),
//                        ),
//                        Expanded(
//                          child: Container(
//                            margin: EdgeInsets.only(
//                                top: 10, left: 10.0, right: 10.0),
//                            child: Column(
//                              children: <Widget>[
//                                SizedBox(width: 5),
//                                Container(
//                                  alignment: Alignment.topLeft,
////                              color: Colors.red,
//                                  child: Text(
//                                    'sdad',
//                                    overflow: TextOverflow.ellipsis,
//                                    style: TextStyle(
//                                      fontSize: 14,
//                                      fontWeight: FontWeight.w500,
//                                    ),
//                                  ),
//                                ),
//                                Container(
//                                  margin: EdgeInsets.only(top: 5),
//                                  alignment: Alignment.topRight,
//                                  child: Text(
////                                    '0.00 \฿',
//                                    v.cost,
//                                    style: TextStyle(
//                                      color: Colors.red,
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//
////                          child: CardContent( //<--replace the Container with CardContent
////
////                          ),
//                          ), //<-- will be replaced soon :)
//                        ),
//                      ],
//                    ),
//                  ),
//                );
//              }),
//            );
//          } else if (snapshot.hasError) {
//            return Text("${snapshot.error}");
//          }
//          // By default, show a loading spinner.
//          return Center(
//            child: CircularProgressIndicator(),
//          );
//        },
//      ),
//    );
//  }
//
//  Widget _buildcarditem() {
//    return Card(
//      child: InkWell(
//        splashColor: Colors.deepPurple.withAlpha(30),
//        onTap: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => Shoeitem()),
//          );
//        },
////                  https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016
//        child: Column(
//          children: <Widget>[
//            Container(
//              width: 110,
//              height: 110,
//              margin: EdgeInsets.only(
//                  top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
//              child: CachedNetworkImage(
//                imageUrl:
//                "https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016",
//                imageBuilder: (context, imageProvider) =>
//                    Container(
//                      decoration: BoxDecoration(
//                        image: DecorationImage(
//                            image: imageProvider,
//                            fit: BoxFit.cover,
//                            colorFilter: ColorFilter.mode(
//                                Colors.deepPurple, BlendMode.colorBurn)),
//                      ),
//                    ),
//                placeholder: (context, url) => CircularProgressIndicator(),
//                errorWidget: (context, url, error) => Icon(Icons.error),
//              ),
//            ),
//            Expanded(
//              child: Container(
//                margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
//                child: Column(
//                  children: <Widget>[
//                    SizedBox(width: 5),
//                    Container(
//                      alignment: Alignment.topLeft,
////                              color: Colors.red,
//                      child: Text(
//                        'sdad',
////                        v.title,
//                        overflow: TextOverflow.ellipsis,
//                        style: TextStyle(
//                          fontSize: 14,
//                          fontWeight: FontWeight.w500,
//                        ),
//                      ),
//                    ),
//                    Container(
//                      margin: EdgeInsets.only(top: 10),
//                      alignment: Alignment.topRight,
//                      child: Text(
//                        '0.00 \฿',
//                        style: TextStyle(
//                          color: Colors.red,
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//
////                          child: CardContent( //<--replace the Container with CardContent
////
////                          ),
//              ), //<-- will be replaced soon :)
//            ),
//          ],
//        ),
//      ),
//    );
//  }
///*
//  Widget _buildCard() {
//    return FutureBuilder(builder: (context, projectSnap) {
//      return GridView.count(
//        crossAxisCount: 2,
//        shrinkWrap: true,
//        scrollDirection: Axis.vertical,
//        physics: NeverScrollableScrollPhysics(),
//        childAspectRatio: .8,
//        children: List.generate(10, (index) {
//          return Card(
//            child: InkWell(
//              splashColor: Colors.deepPurple.withAlpha(30),
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => Shoeitem()),
//                );
//              },
////                  https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016
//              child: Column(
//                children: <Widget>[
//                  Container(
//                    width: 110,
//                    height: 110,
//                    margin: EdgeInsets.only(
//                        top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
//                    child: CachedNetworkImage(
//                      imageUrl: "https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016",
//                      imageBuilder: (context, imageProvider) => Container(
//                        decoration: BoxDecoration(
//                          image: DecorationImage(
//                              image: imageProvider,
//                              fit: BoxFit.cover,
//                              colorFilter:
//                              ColorFilter.mode(Colors.deepPurple, BlendMode.colorBurn)),
//                        ),
//                      ),
//                      placeholder: (context, url) => CircularProgressIndicator(),
//                      errorWidget: (context, url, error) => Icon(Icons.error),
//                    ),
//                  ),
//                  Expanded(
//                    child: Container(
//                      margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
//                      child: Column(
//                        children: <Widget>[
//                          SizedBox(width: 5),
//                          Container(
//                            alignment: Alignment.topLeft,
////                              color: Colors.red,
//                            child: Text(
//                              'ข้าวไรเบอร์รี่',
//                              overflow: TextOverflow.ellipsis,
//                              style: TextStyle(
//                                fontSize: 14,
//                                fontWeight: FontWeight.w500,
//                              ),
//                            ),
//                          ),
//                          Container(
//                            margin: EdgeInsets.only(top: 10),
//                            alignment: Alignment.topRight,
//                            child: Text(
//                              '0.00 \฿',
//                              style: TextStyle(
//                                color: Colors.red,
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//
////                          child: CardContent( //<--replace the Container with CardContent
////
////                          ),
//                    ), //<-- will be replaced soon :)
//                  ),
//                ],
//              ),
//            ),
//          );
//        }),
//      );
//    });
//  }
//  */
//}
//
////SizedBox _buildAdslide() {
////  return SizedBox(
////    height: 150.0,
////    child: ListView.builder(
////      scrollDirection: Axis.horizontal,
////      itemExtent: 100.0,
////      itemBuilder: (context, index) {
////        return Padding(
////          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
////          child: Container(
////            color: Colors.purple,
////          ),
////        );
////      },
////    ),
////  );
////}
//
////SizedBox _buildnavbar() {
////  return SizedBox(
////    height: 150.0,
////    child: ListView.builder(
////      scrollDirection: Axis.horizontal,
////      itemExtent: 100.0,
////      itemBuilder: (context, index) {
////        return Padding(
////          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
////          child: Container(
////            color: Colors.purple,
////          ),
////        );
////      },
////    ),
////  );
////}
///*
//Widget _buildCardListView(List<Product> productsitem) {
//  return FutureBuilder(builder: (context, projectSnap) {
//    return SizedBox(
//      height: 650.0,
//      child: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Container(
//          child: GridView.count(
//            crossAxisCount: 2,
//            shrinkWrap: true,
//            scrollDirection: Axis.vertical,
//            physics: NeverScrollableScrollPhysics(),
//            childAspectRatio: .8,
//            children: List.generate(20, (index) {
//              return Card(
//                child: InkWell(
//                  splashColor: Colors.deepPurple.withAlpha(30),
//                  onTap: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => Shoeitem()),
//                    );
//                  },
//                  child: Column(
//                    children: <Widget>[
//                      ClipRRect(
//                        //<--clipping image
//                        child: Image.network(
//                          "https://scontent.fbkk5-5.fna.fbcdn.net/v/t1.0-9/s960x960/82114066_1772871929515639_6757283905201504256_o.jpg?_nc_cat=104&_nc_sid=8bfeb9&_nc_eui2=AeHftA-G2lAVWU1pZ96I_kLdA1DuaTyst8gDUO5pPKy3yD8O5u6J_4iGYC58P9eZXR5BPljw6-lOclU9e0CigDLT&_nc_ohc=AknN8V-Gw70AX8jGuB3&_nc_ht=scontent.fbkk5-5.fna&_nc_tp=7&oh=95f4f0724956fb72cad623167a62c3ad&oe=5EC21574",
//                          width: 100,
//                          height: 100,
//                        ),
//                      ),
//                      SizedBox(height: 8),
//                      Expanded(
//                        child: Container(
//                          child: Column(
//                            children: <Widget>[
//                              SizedBox(width: 5),
//                              Text(
//                                'ข้าวไรเบอร์รี่',
//                              ),
//                              Text(
//                                '0.00 ฿',
//                                style: TextStyle(
//                                  color: Colors.red,
//                                ),
//                              ),
//                              SizedBox(width: 5),
//                            ],
//                          ),
//
////                          child: CardContent( //<--replace the Container with CardContent
////
////                          ),
//                        ), //<-- will be replaced soon :)
//                      ),
//                    ],
//                  ),
//                ),
//              );
//            }),
//          ),
//        ),
//      ),
//    );
//  });
//}
//*/
//class CardContent extends StatelessWidget {
//  final String name;
//  final String date;
//
//  const CardContent({Key key, @required this.name, @required this.date})
//      : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Text(name, style: TextStyle(fontSize: 20)),
//          SizedBox(height: 8),
//          Text(date, style: TextStyle(color: Colors.grey)),
//          Spacer(),
//          Row(
//            children: <Widget>[
//              RaisedButton(
//                color: Color(0xFF162A49),
//                child: Text('Reserve'),
//                textColor: Colors.white,
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(32),
//                ),
//                onPressed: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => CartShopping()),
//                  );
//                },
//              ),
//              Spacer(),
//              Text(
//                '0.00 \$',
//                style: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  fontSize: 20,
//                ),
//              ),
//              SizedBox(width: 16),
//            ],
//          )
//        ],
//      ),
//    );
//  }
//}

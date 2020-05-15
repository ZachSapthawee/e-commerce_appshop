import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:khwanfaapp/models/Products.dart';

import '../ShowItem.dart';
import '../feed/feed_state.dart';
import '../function/Part_Tabitem.dart';

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 220.0,
          floating: true,
          pinned: true,
          snap: true,
          elevation: 50,
          backgroundColor: Colors.purple[900],
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Products',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.purple[900],
                        offset: Offset(3.0, 2.0),
                      ),
                    ],
                  )),
              background:CachedNetworkImage(
                imageUrl:
                'https://scontent-yyz1-1.cdninstagram.com/v/t51.2885-15/e35/26308762_1895633190766583_5435136789301952512_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=7L06bhcklmIAX-OtqRp&oh=8f7629458a5814acfbd63a26b65dff81&oe=5EC1E88E',
                fit: BoxFit.cover,
              )),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5.0, //10.0 ระยะห้าง
            crossAxisSpacing: 5.0,
            crossAxisCount: 2,
            childAspectRatio: 0.8, //4.0
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return FutureBuilder<List<Products>>(
                  future: feedState.loadData(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    print('testt11  $snapshot');
                    if (snapshot.hasData) {
//                      return Card(
//                        child: InkWell(
//                          splashColor: Colors.deepPurple.withAlpha(30),
//                          onTap: () {
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => Part_TabItem(
////                                  image: v.imagename,
////                                  title: v.productName,
////                                  subTitle: v.productDetail,
////                                  url: '',
//                                      )),
//                            );
//                          },
//                          child: Column(
//                            children: <Widget>[
//                              Container(
//                                width: 110,
//                                height: 110,
//                                margin: EdgeInsets.only(
//                                    top: 10.0,
//                                    left: 10.0,
//                                    right: 10.0,
//                                    bottom: 10.0),
//                                child: CachedNetworkImage(
////                            imageUrl: v.imagename,
//                                  imageUrl:
//                                      'https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016',
//                                  imageBuilder: (context, imageProvider) =>
//                                      Container(
//                                    decoration: BoxDecoration(
//                                      image: DecorationImage(
//                                          image: imageProvider,
//                                          fit: BoxFit.cover,
//                                          colorFilter: ColorFilter.mode(
//                                              Colors.deepPurple,
//                                              BlendMode.colorBurn)),
//                                    ),
//                                  ),
//                                  placeholder: (context, url) => Container(
//                                    width: 120,
//                                    height: 120,
//                                    color: Colors.grey[100],
//                                  ),
////                                        CircularProgressIndicator(),
//                                  errorWidget: (context, url, error) =>
//                                      Icon(Icons.error),
//                                ),
//                              ),
//                              Expanded(
//                                child: Container(
//                                  margin:
//                                      EdgeInsets.only(left: 10.0, right: 10.0),
//                                  child: Column(
//                                    children: <Widget>[
//                                      SizedBox(width: 5),
//                                      Container(
//                                        alignment: Alignment.topLeft,
//                                        child: Text(
//                                          'dsfds',
////                                    v.productName,
//                                          overflow: TextOverflow.ellipsis,
//                                          style: TextStyle(
//                                            fontSize: 14,
//                                            fontWeight: FontWeight.w500,
//                                          ),
//                                        ),
//                                      ),
//                                      Container(
////                                          margin: EdgeInsets.only(top: 5),
//                                        alignment: Alignment.topRight,
//                                        child: Text(
//                                          'sdfsd',
////                                    v.productDetail,
//                                          softWrap: true,
//                                          maxLines: 2,
//                                          overflow: TextOverflow.ellipsis,
//                                          style: TextStyle(
//                                            fontSize: 12,
//                                            color: Colors.red,
//                                          ),
//                                        ),
//                                      ),
//                                      Container(
////                                          margin: EdgeInsets.only(top: 10),
//                                        alignment: Alignment.topRight,
//                                        child: Text(
//                                          '\u{0e3f} ' + '000.0',
//                                          //v.cost.toString(),
////                                            v.cost.toString(),
//                                          overflow: TextOverflow.ellipsis,
//                                          style: TextStyle(
//                                            color: Colors.red,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      );
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
            },
              childCount: 20,
          ),
        ),
      ],
    );
  }
}

import 'dart:wasm';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:khwanfaapp/model/Products.dart';

import 'ShowItem.dart';
import 'cart.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();

}

class _FeedPageState extends State<FeedPage> {
  List<Product> productsitem;

//  Future<String> productsJson = rootBundle.loadString('json/products.json');
//    productsJson.then(value){
//      List<Product> products = productFromJson(value);
//    };


  @override
  void initState() {
    _loadjsonData();
    super.initState();
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
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Icon(Icons.search, color: Colors.white),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                  EdgeInsets.only(left: 10.0, right: 0.0, top: 10.0,bottom: 10.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'ค้นหา',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.only(left: 10.0, right: 10.0, top: 9.5,bottom: 9.5),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.purple[900],
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: SizedBox(
                  height: 200.0,
                  width: 350.0,
                  child: Carousel(
                    images: [
//                      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
//                      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                      ExactAssetImage("images/drawable-xxxhdpi/slideview_three.png"),
                      ExactAssetImage("images/drawable-xxxhdpi/slideview_one.png"),
                      ExactAssetImage("images/drawable-xxxhdpi/slideview_two.png")
                    ],
                    showIndicator: false,
                    borderRadius: false,
                    moveIndicatorFromBottom: 180.0,
                    noRadiusForIndicator: true,
                    overlayShadow: true,
                    overlayShadowColors: Colors.white,
                    overlayShadowSize: 0.7,
                  )
              ),
            ),
//            _buildAdslide(),
//            _buildnavbar(),
            _buildCard(productsitem),
//            _buildCardListView(productsitem),
          (productsitem != null)?
          Column(
            children: productsitem.map((Product){
              return Text(Product.title);
            }).toList(),
          )
              :Container(),

          ],
        ),
      ),
    );
  }
}

Future _loadjsonData() async{
  Future<String> productsJson = rootBundle.loadString('json/products.json');
  return productsJson;

  //FINAL Server
//    if(response.statusCode == 200){
//      var productsJson = json.decode(response.body);
//      for(var productsJson in productsJson){
//        products.add(Product.fromJson(productsJson));
//      }
//    }
//    return products;

//    productsJson.then((value) {
//      List<Product> productsitem = productFromJson(value);
//      print(productsitem.length);
//      print(productsitem.map((Product){print(Product.title);
//      print(Product.cast);
//      }));
//    });
}


//SizedBox _buildAdslide() {
//  return SizedBox(
//    height: 150.0,
//    child: ListView.builder(
//      scrollDirection: Axis.horizontal,
//      itemExtent: 100.0,
//      itemBuilder: (context, index) {
//        return Padding(
//          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
//          child: Container(
//            color: Colors.purple,
//          ),
//        );
//      },
//    ),
//  );
//}

//SizedBox _buildnavbar() {
//  return SizedBox(
//    height: 150.0,
//    child: ListView.builder(
//      scrollDirection: Axis.horizontal,
//      itemExtent: 100.0,
//      itemBuilder: (context, index) {
//        return Padding(
//          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
//          child: Container(
//            color: Colors.purple,
//          ),
//        );
//      },
//    ),
//  );
//}

Widget _buildCardListView(List<Product> productsitem) {
  return FutureBuilder(
    builder: (context, projectSnap) {
      return SizedBox(
        height: 650.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: .8,
              children: List.generate(20, (index) {
                return Card(
                  child: InkWell(
                    splashColor: Colors.deepPurple.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shoeitem()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        ClipRRect(  //<--clipping image
                          child: Image.network(
                            "https://scontent.fbkk5-5.fna.fbcdn.net/v/t1.0-9/s960x960/82114066_1772871929515639_6757283905201504256_o.jpg?_nc_cat=104&_nc_sid=8bfeb9&_nc_eui2=AeHftA-G2lAVWU1pZ96I_kLdA1DuaTyst8gDUO5pPKy3yD8O5u6J_4iGYC58P9eZXR5BPljw6-lOclU9e0CigDLT&_nc_ohc=AknN8V-Gw70AX8jGuB3&_nc_ht=scontent.fbkk5-5.fna&_nc_tp=7&oh=95f4f0724956fb72cad623167a62c3ad&oe=5EC21574",
                            width: 100,
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 8),

                        Expanded(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(width: 5),
                                Text(
                                  'ข้าวไรเบอร์รี่',
                                ),
                                Text(
                                  '0.00 ฿',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),

//                          child: CardContent( //<--replace the Container with CardContent
//
//                          ),
                          ), //<-- will be replaced soon :)
                        ),
                      ],
                    ),

                  ),
                );
              }),
            ),
          ),
        ),
      );
    });
}

class CardContent extends StatelessWidget {
  final String name;
  final String date;

  const CardContent({Key key, @required this.name, @required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name, style: TextStyle(fontSize: 20)),
          SizedBox(height: 8),
          Text(date, style: TextStyle(color: Colors.grey)),
          Spacer(),
          Row(
            children: <Widget>[
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('Reserve'),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartShopping()),
                  );
                },
              ),
              Spacer(),
              Text(
                '0.00 \$',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 16),
            ],
          )
        ],
      ),
    );
  }
}

//    SizedBox  _buildCardListView(List<Product> productsitem) {
//
////      print("Pass" + productsitem.toString());
////      (productsitem != null)?
////      productsitem.map((Product) {
//        return SizedBox(
//          height: 650.0,
//          child: Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: GridView.count(
//              crossAxisCount: 2,
//              children: List.generate(80, (index) {
//                return Card(
//                  child: InkWell(
//                    splashColor: Colors.deepPurple.withAlpha(30),
//                    onTap: () {
//
//                    },
////              child: Image.network(src),
//                    child: Container(
//                      width: 300,
//                      height: 100,
//                      child: Column(
//                        children: <Widget>[
////                      Image.network("",
////                      fit: BoxFit.cover,
////                      ),
//                          Text('ตะกร้า'),
//                          Text('499')
//                        ],
//                      ),
//                    ),
//
//                  ),
//                );
//              }),
//            ),
//          ),
//        );
//
////      }).toList():Container();
//    }

Widget _buildCard(List<Product> productsitem) {
  return FutureBuilder(
      builder: (context, projectSnap) {
        return GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: .8,
          children: List.generate(80, (index) {
            return Card(
              child: InkWell(
                splashColor: Colors.deepPurple.withAlpha(30),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shoeitem()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    ClipRRect(  //<--clipping image
                      borderRadius: BorderRadius.vertical(top: Radius.circular(5),bottom: Radius.circular(5)),
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0,bottom: 10.0),
                        child: Image.network(
                          "https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016",
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10,left: 10.0,right: 10.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(width: 5),
                            Container(
                              alignment: Alignment.topLeft,
//                              color: Colors.red,
                              child: Text(
                                'ข้าวไรเบอร์รี่',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              alignment: Alignment.topRight,
                              child: Text(
                                '0.00 \฿',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),

//                          child: CardContent( //<--replace the Container with CardContent
//
//                          ),
                      ), //<-- will be replaced soon :)
                    ),
                  ],
                ),

              ),
            );
          }),
        );
      });
}




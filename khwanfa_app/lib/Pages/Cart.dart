import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'Checkout.dart';
import 'function/Counter.dart';

class CartShopping extends StatefulWidget {
  final String image, title, subTitle, url;
  final int cost;
//  final Color color;

  CartShopping(
      {Key key,
        @required this.image,
        @required this.title,
        @required this.subTitle,
        @required this.url,
        @required this.cost})
//      @required this.color})
      : super(key: key);

  @override
  _CartShoppingState createState() => _CartShoppingState();
}

class _CartShoppingState extends State<CartShopping> {

  @override
  Widget build(BuildContext context) {
    final List<String> items = <String>['ข้าวไรซ์เบอรี่ #KHWANFA', 'แผ่นใบเมี่ยงข้าวไรซ์เบอรี่ '];
    final List<int> price = <int>[499, 500];

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('ตะกร้าสินค้า')),
//            title: Container(
//              child: Center(
//                child: Text('ตะกร้าสินค้า'),
//              ),
//            ),
//            backgroundColor: Colors.purple[900],
        ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              ClipRRect(  //<--clipping image
                      borderRadius: BorderRadius.vertical(top: Radius.circular(5),bottom : Radius.circular(5) ),
                      child: Image.network("https://www.w3schools.com/w3images/lights.jpg",
                        width: 100,
                        height: 100,),
                    ),

//                Expanded(
//                  child: Image.network('https://taladchumchon.com/wp-content/uploads/2018/11/IMG_7936.jpg',height: 100,),
//                ),
//              SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5.0, left: 10.0,right: 10.0),
                        alignment: Alignment.topLeft,
                        child: Text(
//                          'ข้าวไรเบอร์รี่',
                          "${items[index].toString()}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 10.0,right: 10.0),
                        child: Text('ข้าวไรเบอร์รี่ dsgvsfvcfdsafvsdfdeszfdzseewafefawf',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0,bottom: 5.0),
                              child: Counter()
                          ),
//                          Container(
//                            child: Text(
//                              '499 \฿',
////                            "${productsList[id].price}",
//                              style: Theme.of(context).textTheme.title,
//                            ),
//                          ),
                        ],
                      ),
                    ],
                  ),
                ),
//                Spacer(),
                Container(
                  margin: EdgeInsets.only(left: 0.0, right: 10.0),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.delete_outline,
                          color: Colors.deepPurple,
                        ),

                        onPressed: (){

                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25.0),
                        child: Text(
//                          '499 \฿',
                          "${price[index].toString()} \฿",
//                            "${productsList[id].price}",
//                          style: Theme.of(context).textTheme.title,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
//          return Container(
//            height: 100,
//            color: Colors.amber[colorCodes[index]],
//            child: Center(
//              child: Column(
//                children: <Widget>[
//                  ClipRRect(  //<--clipping image
//                    borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
//                    child: Image.network("https://taladchumchon.com/wp-content/uploads/2018/11/IMG_7936.jpg",width: 100,height: 100,),
//                  ),
//                ],
//              ),
////                child: Text('Entry ${entries[index]}'),
//
//            ),
//          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
        bottomNavigationBar: BottomAppBar(
            child: Row(
              children: <Widget>[
                Spacer(),
                Text(
                  '999.00 \฿',
//                  "${price[].toString()} \฿",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 16),
                RaisedButton(
                  color: Color(0xFF162A49),
                  child: Text('ชำระเงิน'),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckoutItem()),
                    );
                  }
                ),
                SizedBox(width: 16),
              ],

            ),
          color: Colors.white,
        )
    );
  }
}

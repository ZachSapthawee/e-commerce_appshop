
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:khwanfaapp/models/Products.dart';

import 'Checkout.dart';
import 'function/Counter.dart';

class testview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> items = <String>['ข้าวไรซ์เบอรี่ #KHWANFA', 'แผ่นใบเมี่ยงข้าวไรซ์เบอรี่ '];
    final List<int> price = <int>[499, 500];

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('รายละเอียดการสั่งซื้อ')),
//            title: Container(
//              child: Center(
//                child: Text('ตะกร้าสินค้า'),
//              ),
//            ),
          backgroundColor: Colors.purple[900],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 5.0),
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 40.0, right: 10.0),
                  width: MediaQuery.of(context).size.width,
                  child: Text('ที่อยู่ในการจัดส่ง')
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.location_on,
                      color: Colors.deepPurple,
                      size: 30.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Text('ทรัพย์ทวี  เพ็ชรสาย',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left),
                              ),
                            ],
                          ),
                          Container(
                            child: Text(
                              '112 หมู่ 7 ต.หนองกอมเกาะหนองคาย, Nong Khai - เมืองหนองคาย, Mueang Nong Khai',
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Column(
                  children: <Widget>[
                    Divider(thickness: 1.0,),
                    Row(
                      children: <Widget>[
                        Text('Khwanfa'),
                      ],
                    ),
                    Divider(thickness: 1.0,),
                  ],
                ),
              ),
              Container(
                height: 250,
                margin: EdgeInsets.all(10),
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect( //<--clipping image
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(5), bottom: Radius.circular(5)),
                            child: Image.network(
                              "https://scontent-yyz1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/26308762_1895633190766583_5435136789301952512_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=cvHMiTKj25AAX-GU66S&oh=b1e409cddb9697b171661f9382f18751&oe=5EBC9CC8",
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
                                  margin: EdgeInsets.only(
                                      top: 5.0, left: 10.0, right: 10.0),
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
                                  margin: EdgeInsets.only(left: 10.0, right: 10.0),
                                  child: Text(
                                    'ข้าวไรเบอร์รี่ dsgvsfvcfdsafvsdfdeszfdzseewafefawf',
                                    softWrap: true,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 10.0,
                                            right: 10.0,
                                            top: 5.0,
                                            bottom: 5.0),
                                        child: Text('X 1')
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
        //                          IconButton(
        //                            icon: Icon(Icons.delete_outline,
        //                              color: Colors.deepPurple,
        //                            ),
        //
        //                            onPressed: (){
        //
        //                            },
        //                          ),
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
                  separatorBuilder: (BuildContext context,
                      int index) => const Divider(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(thickness: 1.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'คำสั่งซื้อ #29451475684542',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.red
                          ),
                        ),
                        Text(
                          'สั่งซื้อวันที่ 22 เม.ย. 2020 23.48.59',
                          style: TextStyle(
                            fontSize: 12,

                          ),
                        ),
                        Text(
                          'การจัดส่งแบบธรรมดา 3 - 5 วัน',
                          style: TextStyle(
                            fontSize: 12,

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(thickness: 1.0,),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Text(
                                  'รวมยอด',
                                  style: TextStyle(
                                      fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '\u{0e3f} 999.00' ,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Text(
                                  'ค่าจัดส่ง',
                                  style: TextStyle(
                                      fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '\u{0e3f} 35.00' ,
                                style: TextStyle(
                                  fontSize: 14,

                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(thickness: 1.0,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Text(
                              'รวมจำนวนสินค้า :',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '2.00' ,
                            style: TextStyle(
                              fontSize: 14,

                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Text(
                              'รวมทั้งสิ้น :',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\u{0e3f} 1,034.00' ,
                            style: TextStyle(
                              fontSize: 14,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

//        bottomNavigationBar: BottomAppBar(
//          child: Row(
//            children: <Widget>[
//              Spacer(),
//              Text(
//                '999.00 \฿',
////                  "${price[].toString()} \฿",
//                style: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  fontSize: 20,
//                ),
//              ),
//              SizedBox(width: 16),
//              RaisedButton(
//                  color: Color(0xFF162A49),
//                  child: Text('ชำระเงิน'),
//                  textColor: Colors.white,
//                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(5),
//                  ),
//                  onPressed: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => CheckoutItem()),
//                    );
//                  }
//              ),
//              SizedBox(width: 16),
//            ],
//
//          ),
//          color: Colors.white,
//        )
    );
  }
  Widget listitem(){
//    return Container(
//      height: MediaQuery.of(context).size.height,
//      child: ListView.separated(
//        padding: const EdgeInsets.all(8),
//        itemCount: items.length,
//        itemBuilder: (BuildContext context, int index) {
//          return Container(
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                ClipRRect(  //<--clipping image
//                  borderRadius: BorderRadius.vertical(top: Radius.circular(5),bottom : Radius.circular(5) ),
//                  child: Image.network("https://scontent-yyz1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/26308762_1895633190766583_5435136789301952512_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=cvHMiTKj25AAX-GU66S&oh=b1e409cddb9697b171661f9382f18751&oe=5EBC9CC8",
//                    width: 100,
//                    height: 100,),
//                ),
//
////                Expanded(
////                  child: Image.network('https://taladchumchon.com/wp-content/uploads/2018/11/IMG_7936.jpg',height: 100,),
////                ),
////              SizedBox(width: 16),
//                Expanded(
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      Container(
//                        margin: EdgeInsets.only(top: 5.0, left: 10.0,right: 10.0),
//                        alignment: Alignment.topLeft,
//                        child: Text(
////                          'ข้าวไรเบอร์รี่',
//                          "${items[index].toString()}",
//                          overflow: TextOverflow.ellipsis,
//                          style: TextStyle(
//                            fontSize: 16,
//                            fontWeight: FontWeight.w500,
//                          ),
//                        ),
//                      ),
//                      Container(
//                        alignment: Alignment.topLeft,
//                        margin: EdgeInsets.only(left: 10.0,right: 10.0),
//                        child: Text('ข้าวไรเบอร์รี่ dsgvsfvcfdsafvsdfdeszfdzseewafefawf',
//                          softWrap: true,
//                          maxLines: 2,
//                          overflow: TextOverflow.ellipsis,
//                        ),
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          Container(
//                              margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0,bottom: 5.0),
//                              child: Text('X 1')
//                          ),
////                          Container(
////                            child: Text(
////                              '499 \฿',
//////                            "${productsList[id].price}",
////                              style: Theme.of(context).textTheme.title,
////                            ),
////                          ),
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
////                Spacer(),
//                Container(
//                  margin: EdgeInsets.only(left: 0.0, right: 10.0),
//                  child: Column(
//                    children: <Widget>[
////                          IconButton(
////                            icon: Icon(Icons.delete_outline,
////                              color: Colors.deepPurple,
////                            ),
////
////                            onPressed: (){
////
////                            },
////                          ),
//                      Container(
//                        margin: EdgeInsets.only(top: 25.0),
//                        child: Text(
////                          '499 \฿',
//                          "${price[index].toString()} \฿",
////                            "${productsList[id].price}",
////                          style: Theme.of(context).textTheme.title,
//                          style: TextStyle(
//                            fontSize: 21,
//                            fontWeight: FontWeight.w500,
//                            color: Colors.red,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          );
////          return Container(
////            height: 100,
////            color: Colors.amber[colorCodes[index]],
////            child: Center(
////              child: Column(
////                children: <Widget>[
////                  ClipRRect(  //<--clipping image
////                    borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
////                    child: Image.network("https://taladchumchon.com/wp-content/uploads/2018/11/IMG_7936.jpg",width: 100,height: 100,),
////                  ),
////                ],
////              ),
//////                child: Text('Entry ${entries[index]}'),
////
////            ),
////          );
//        },
//        separatorBuilder: (BuildContext context, int index) => const Divider(),
//      ),
//    );
  }
}

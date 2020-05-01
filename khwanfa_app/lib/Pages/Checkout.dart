import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khwanfaapp/my_custom_icons_icons.dart';

import 'Selected_Bank.dart';
import 'list_address.dart';

class CheckoutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left: 60.0),
              child: Text(
                'Checkout',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body:
        _buildcardAddress(context),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              Spacer(),
              Text(
                '0.00 \฿',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 16),
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('สั่งซื้อ'),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Selected_Bank()),
                  );
                },
              ),
              SizedBox(width: 16),
            ],
          ),
          color: Colors.white,
        )
    );
  }

  Widget _buildcardAddress(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 6.0),
            child: Image.asset('images/drawable-xxxhdpi/mail_color.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Row(
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
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          mainAxisAlignment: MainAxisAlignment.start,
//                          mainAxisAlignment: MainAxisAlignment.end,
//                          mainAxisSize: MainAxisSize.min,
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
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    child: Text(
                      'แก้ไข',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list_address()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Icon(
                    Icons.phone,
                    color: Colors.deepPurple,
                    size: 30.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'เบอร์โทรศัพท์',
                        contentPadding: EdgeInsets.all(10),
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset('images/drawable-xxxhdpi/mail_color.png'),
          ),
              _buildproductChackout(),

        ],
      ),
    );
  }

  Widget _thaipost() {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                MyCustomIcons.box,
                color: Colors.deepPurple,
                size: 20.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Text('แพกเกจ 1 จาก 1'),
                ),
              ),
              Container(
                child: Text('จัดส่งโดย'),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                width: 75,
                child: Text(
                  'Khwanfaefsdfawsdf',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Divider(
            height: 10,
            thickness: 1,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text('ตัวเลือกในการจัดส่ง'),
          ),
        ],
      ),
    );
  }

  Widget _buildproductChackout() {
    return Card(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          _thaipost(),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin:
                      EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        //<--clipping image
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(5), bottom: Radius.circular(5)),
                        child: Image.network(
                          "https://scontent-yyz1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/26308762_1895633190766583_5435136789301952512_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=cvHMiTKj25AAX-GU66S&oh=b1e409cddb9697b171661f9382f18751&oe=5EBC9CC8",
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin:
                            EdgeInsets.only(top: 5.0, right: 10.0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              'ข้าวไรเบอร์รี่',
//                        "${items[index].toString()}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only( right: 10.0),
                            child: Text(
                              'ข้าวไรเบอร์รี่ dsgvsfvcfdsafvsdfdeszfdzseewafefawf',
                              softWrap: true,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                                top: 20.0, bottom: 10.0),
                            child: Text(
                              '\฿ 499.00 ',
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

                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(top: 5.0, right: 10.0),
                      child: Text(
                        'จำนวน 1',
//                            "${productsList[id].price}",
//                          style: Theme.of(context).textTheme.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0,bottom: 10.0),
                        alignment: Alignment.topRight,
                        child: Text('1 จำนวนสินค้า ,ยอดรวมสินค้า : \฿ 499.00'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

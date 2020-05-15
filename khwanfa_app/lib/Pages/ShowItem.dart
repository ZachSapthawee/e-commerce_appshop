import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khwanfaapp/Pages/Checkout.dart';
import 'package:khwanfaapp/Pages/Cart.dart';

import 'testview.dart';

class Shoeitem extends StatefulWidget {
  @override
  _ShoeitemState createState() => _ShoeitemState();
}

class _ShoeitemState extends State<Shoeitem> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');

    return Scaffold(
        body: Container(
          margin: MediaQuery.of(context).padding,
          child: Column(
            children: <Widget>[
              Container(color: Colors.transparent,
                child: Row(
                  children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios,color: Color(0xFF162A49),),
                        tooltip: 'กลับ',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                  ],
                ),
              ),
              TabItem()
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              SizedBox(width: 16),
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('ใส่ตะกร้า'),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => CartShopping()),
//                  );
                },
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: RaisedButton(
                  color: Color(0xFF162A49),
                  child: Text('ซื้อเลย'),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckoutItem()),
                    );
                  },
                ),
              ),
              Spacer(),
              Text(
                '0.00 \฿',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 16),
            ],
          ),
          color: Colors.white,
        )
    );

  }
}

class TabItem extends StatelessWidget {
//  final String image, title, subTitle, url;
//  final Color color;


//  TabItem({Key key,
//    @required this.image,
//    @required this.title,
//    @required this.subTitle,
//    @required this.url,
//    @required this.color
//  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 60,
          color: Colors.white70,
        child: Column(
          children: <Widget>[
            ImageTabItem(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    TitleTabItem(),
                    SubTitleTabItem(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ImageTabItem(){
    return CachedNetworkImage(
        imageUrl :
        "https://taladchumchon.com/wp-content/uploads/2018/11/IMG_7936.jpg"
    );
  }

  Widget TitleTabItem(){
    return Text(
      'ข้าวไร้เบอร์รี่ จากการผสมข้ามพันธุ์llllllkkk',
//                      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
  Widget SubTitleTabItem(){
    return Text(
      'ข้าวไรซ์เบอรี่ (Riceberry) เป็นข้าวที่เกิดขึ้นใหม่ จากการผสมข้ามพันธุ์ระหว่างข้าวเจ้าหอมนิล',
//                      subTitle,
      style: TextStyle(
        fontSize: 15,
      ),
    );
  }
}



class SlidingCard extends StatelessWidget {
  final String name; //<-- title of the event
  final String date; //<-- date of the event
  final String assetName; //<-- name of the image to be displayed

  const SlidingCard({
    Key key,
    @required this.name,
    @required this.date,
    @required this.assetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
      elevation: 8,
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)), //<--custom shape
      child: Column(
        children: <Widget>[
          ClipRRect(  //<--clipping image
//            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
//            child: Image.asset( //<-- main image
//              'assets/$assetName',
//              height: MediaQuery.of(context).size.height * 0.3,
//              fit: BoxFit.none,
//            ),

            child: Image.network("https://taladchumchon.com/wp-content/uploads/2018/11/IMG_7936.jpg",width: 100,height: 100,),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Container(
              child: CardContent( //<--replace the Container with CardContent
                name: name,
                date: date,
              ),
            ), //<-- will be replaced soon :)
          ),
        ],
      ),
    );
  }
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
                child: Text('เพิ่มลงรถเข็น'),
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
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('ซื้อเลย'),
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





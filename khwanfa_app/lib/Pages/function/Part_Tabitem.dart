import 'package:flutter/material.dart';

import '../Checkout.dart';
import '../cart.dart';

class Part_TabItem extends StatelessWidget {
  final String image, title, subTitle, url;
  final Color color;

  Part_TabItem(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.subTitle,
      @required this.url,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: MediaQuery.of(context).padding,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.transparent,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF162A49),
                      ),
                      tooltip: 'กลับ',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: color,
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
              ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartShopping()),
                  );
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
        ));
  }

  Widget ImageTabItem(){
    return Image.network(
//        "https://taladchumchon.com/wp-content/uploads/2018/11/IMG_7936.jpg"
    image
    );
  }

  Widget TitleTabItem(){
    return Text(
//      'ข้าวไร้เบอร์รี่ จากการผสมข้ามพันธุ์llllllkkk',
      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
  Widget SubTitleTabItem(){
    return Text(
//      'ข้าวไรซ์เบอรี่ (Riceberry) เป็นข้าวที่เกิดขึ้นใหม่ จากการผสมข้ามพันธุ์ระหว่างข้าวเจ้าหอมนิล',
      subTitle,
      style: TextStyle(
        fontSize: 15,
      ),
    );
  }
}

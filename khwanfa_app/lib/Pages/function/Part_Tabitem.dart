import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khwanfaapp/my_custom_icons_icons.dart';

import '../Checkout.dart';
import '../Cart.dart';
import '../testview.dart';

class Part_TabItem extends StatelessWidget {
  final String image, title, subTitle, url;
  final int cost;
//  final Color color;

  Part_TabItem(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.subTitle,
      @required this.url,
      @required this.cost})
//      @required this.color})
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    IconButton(
                      padding: EdgeInsets.only(right: 30.0),
                      icon: const Icon(
                        Icons.local_grocery_store,
                        color: Color(0xFF162A49),
                      ),
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
//                  color: color,
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
                              Divider(),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text('ระยะเวลาจัดส่ง จัดส่งแบบประหยัด 3-4 วัน',
                                ),
                              ),
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
                splashColor: Colors.red,
                child: Row(
                  children: <Widget>[
                    Icon(MyCustomIcons.add_shopping_cart),
                    SizedBox(width: 5.0,),
                    Text('เพิ่มลงรถเข็น'),
                  ],
                ),
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
                      MaterialPageRoute(builder: (context) => CheckoutItem(
                        image: image,
                        title: title,
                        subTitle: subTitle,
                        cost: cost,
                        url: '',
                      )),
                    );
                  },
                ),
              ),
              Spacer(),
              Text(
                '\u{0e3f} ' + cost.toString(),
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
      image,
      height: 300,
    );
  }

  Widget TitleTabItem(){
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
  Widget SubTitleTabItem(){
    return Container(
      child: Text(
        subTitle,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}

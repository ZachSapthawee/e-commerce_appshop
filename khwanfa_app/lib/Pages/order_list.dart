import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Cart.dart';

class Order_list extends StatefulWidget {
  @override
  _Order_listState createState() => _Order_listState();
}

class _Order_listState extends State<Order_list> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('รายการสั่งซื้อ'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              _getAllProducts(),
              Container(
                child: Text('sdfahgeasg'),
              ),
              Container(
                child: Text('aeghytjh'),
              ),
              Container(
                child: Text('aytgfhuiugh'),
              ),
            ],
          ),
//          body: TabBarView(
//            children: choices.map((Choice choice) {
//              return Padding(
//                padding: const EdgeInsets.all(16.0),
//                child: ChoiceCard(choice: choice),
//              );
//            }).toList(),
//          ),
        ),
      ),
    );
  }

  Widget _getAllProducts() {
    return Container(
      child: Card(
        margin: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
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
                            "https://imagelogo.co.th/wp-content/uploads/2018/07/slide-image-flex-graphic-03.png",
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
      ),
    );
  }
}

class Choice {
  const Choice({this.title});

  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'ทั้งหมด'),
  const Choice(title: 'ที่ต้องชำระเงิน'),
  const Choice(title: 'กำลังเตรียมจัดส่ง'),
  const Choice(title: 'อยู่ระหว่างขนส่ว'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(choice.title, style: textStyle),
            Text('hkgvjhfvik', style: textStyle),
            Text(choice.title, style: textStyle),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

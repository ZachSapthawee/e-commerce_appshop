import 'package:flutter/material.dart';

class Order_list extends StatefulWidget {
  @override
  _Order_listState createState() => _Order_listState();
}

class _Order_listState extends State<Order_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left: 50.0),
              child: Text(
                'รายการสั่งซื้อ',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(),
    );
  }
}

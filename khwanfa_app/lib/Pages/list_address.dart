
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'add_address.dart';

class list_address extends StatefulWidget {
  @override
  _list_addressState createState() => _list_addressState();
}

class _list_addressState extends State<list_address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(left: 30.0),
          child: Text(
            'เพิ่มที่อยู่การจัดส่ง',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Material(
                color: Colors.deepPurple[200],
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => add_address()),
                    );
                  },
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.deepPurple[300],
                  child: Container(
                    height: 130,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Center(
                      child: Text('+ เพิ่มที่อยู่ใหม่',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          _buildcardAddress(context),
        ],
      ),
    );
  }
}

Widget _buildcardAddress(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
    child: Column(
      children: <Widget>[
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
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => add_address()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
//
      ],
    ),
  );
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khwanfaapp/Pages/cast.dart';
import 'package:khwanfaapp/Pages/index1.dart';
import 'package:khwanfaapp/Pages/profile.dart';

import 'Product.dart';



class index extends StatefulWidget{
  index({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => _indexState();

}

class _indexState extends State<index>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle textnavStyle = TextStyle(fontSize: 11, fontFamily: 'prompt',fontWeight: FontWeight.w500);
  final List<Widget> _widgetOptions = [
//    Text('Index 0 : ฟีด'),
//    Text('Index 1 : 1'),
//    Text('Index 2 : 3'),
//    Text('Index 3 : 4'),
    FeedPage(),
    Product(),
    CastShopping(),
    Profile(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//          title: Container(
//            child: Row(
//              children: <Widget>[
//                Column(
//                  children: [
//                    Icon(Icons.search, color: Colors.white),
//                  ],
//                ),
//                Column(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
////                      child: TextField(
////
////                      ),
//                    ),
//                  ],
//                ),
//              ],
//            ),
//          ),
//          backgroundColor: Colors.purple[900],
//      ),
      body: _widgetOptions[_selectedIndex],


      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        backgroundColor: Colors.purple[900],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.purple[50],
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'ฟีด',
              style: textnavStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall),
            title: Text(
              'สินค้า',
              style: textnavStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            title: Text(
                'รถเข็น',
                style: textnavStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text(
                'บัญชีผู้ใช้',
                style: textnavStyle,
            ),
          ),
        ],
//        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }


}


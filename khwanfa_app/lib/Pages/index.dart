import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khwanfaapp/Pages/cart.dart';
import 'package:khwanfaapp/Pages/feed/feed.dart';
import 'package:khwanfaapp/Pages/profile.dart';
import 'package:khwanfaapp/Pages/testview.dart';
import 'package:khwanfaapp/my_custom_icons_icons.dart';

import 'ProductItem.dart';
import 'ShowItem.dart';



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
    ProductItem(),
    CartShopping(),
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
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.android),
          backgroundColor: Colors.blue
          ,
        ),

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.purple[100],
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
            icon: Icon(Icons.local_grocery_store,
            ),
            title: Text(
                'รถเข็น',
                style: textnavStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
                'บัญชีผู้ใช้',
                style: textnavStyle,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[900],
        onTap: _onItemTapped,
      ),
    );
  }


}


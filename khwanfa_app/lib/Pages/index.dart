import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khwanfaapp/Pages/Cart.dart';
import 'package:khwanfaapp/Pages/feed/feed.dart';
import 'package:khwanfaapp/Pages/products_tab/ProductsItem.dart';
import 'package:khwanfaapp/Pages/profile_tab/Profile.dart';

import 'feed/Feed1.dart';



class Index extends StatefulWidget{
  Index({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => _indexState();

}

class _indexState extends State<Index>{
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle textnavStyle = TextStyle(fontSize: 11, fontFamily: 'prompt',fontWeight: FontWeight.w500);
  final List<Widget> _widgetOptions = [
    FeedPage(),
    ProductsItem(),
    CartShopping(),
    Profile()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.red[100],
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
        selectedItemColor: Colors.red[500],
        onTap: _onItemTapped,
      ),
    );
  }


}


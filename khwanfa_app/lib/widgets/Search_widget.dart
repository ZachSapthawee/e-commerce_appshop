import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Icon(Icons.search, color: Colors.white),
        ),
        Expanded(
          flex: 10,
          child: Container(
            margin: EdgeInsets.only(
                left: 10.0, right: 0.0, top: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 15),
                hintText: 'ค้นหา',
//                      suffixIcon: Icon(Icons.search),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 9.5, bottom: 9.5),
              ),
              cursorColor: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

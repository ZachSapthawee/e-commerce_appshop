import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _count += 1;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
//              border: Border.all(),
              color: Colors.green,
            ),
            child: Icon(Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 15.0),
        Text("$_count"),
        SizedBox(width: 15.0),
        GestureDetector(
          onTap: () {
            setState(() {
              (_count != 1)?
                _count -= 1
              :Container();
            });
          },
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
//              border: Border.all(),
              color: Colors.red,
            ),
            child: Icon(Icons.remove,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

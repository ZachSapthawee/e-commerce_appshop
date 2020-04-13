
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: <Widget>[
              Column(
                children: [
                  Icon(Icons.search, color: Colors.white),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                      child: TextField(
//
//                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.purple[900],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            _buildAdslide(),
            _buildnavbar(),
            _buildCardListView(),
          ],
        ),
      ),
    );
  }
}

SizedBox _buildAdslide(){
  return SizedBox(
    height: 150.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemExtent: 100.0,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          child: Container(
            color: Colors.purple,
          ),
        );
      },
    ),
  );
}

SizedBox _buildnavbar() {
  return SizedBox(
    height: 150.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemExtent: 100.0,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          child: Container(
            color: Colors.purple,
          ),
        );
      },
    ),
  );
}

SizedBox _buildCardListView() {
  return SizedBox(
    height: 350.0,
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemExtent: 200.0,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          child: Container(
            color: Colors.purple,
          ),
        );
      },
    ),
  );
}


import 'package:flutter/material.dart';

class OderStatus extends StatefulWidget {
  @override
  _OderStatusState createState() => _OderStatusState();
}

class _OderStatusState extends State<OderStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(left: 30.0),
          child: Text(
            'สถานะการจัดส่ง',
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
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Container(
              child: Text('รห'),
            ),
          ),
          Expanded(
//            margin: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                timelineRow('พัสดุถึงศูนย์คัดแยก', 'None - นนทบุรี'),
                timelineRow('ไปรษณีย์เข้ารับพัสดุแล้ว', 'ไปรษณีย์นนทบุรี - นนทบุรี'),
                timelineRow('พัสดุถึงศูนย์คัดแยก','ศูนย์กระจายสินค้านนทบุรี - นนทบุรี'),
                timelineRow('พัสดุถึงศูนย์คัดแยก', 'หนองคาย - หนองคาย'),
                timelineRow('จุดคัดแยกเมืองหนองคาย', 'เมืองหนองคาย 1 - หนองคาย'),
                timelineRow('นำจ่าย', 'เมืองหนองคาย 1 - หนองคาย'),
                timelineLastRow('ปลายทางได้รับเรียบร้อยแล้ว',
                    'ผู้รับสินค้า: Zak Sapthawee'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget orderTimeLine() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      margin: EdgeInsets.only(
//        bottom: SizeConfig.safeBlockHorizontal * 3,
          ),
      padding: EdgeInsets.only(
//        top: SizeConfig.safeBlockHorizontal * 3,
//        left: SizeConfig.safeBlockHorizontal * 7,
//        bottom: SizeConfig.safeBlockHorizontal * 3,
          ),
      child: Column(
        children: <Widget>[
//          timelineRow("Order Confirmed", orderDateTime),
//          timelineRow("Order Inprocess", orderDateTime),
          timelineRow("Order Processed", ""),
          timelineRow("Order Shipped", ""),
          timelineLastRow("Order Delivered", ""),
        ],
      ),
    );
  }

  Widget timelineRow(String title, String subTile) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 18,
                height: 18,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Text(""),
              ),
              Container(
                width: 3,
                height: 50,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle,
                ),
                child: Text(""),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 9,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${title}\n ${subTile}',
                  style: TextStyle(fontSize: 14, color: Colors.black54)),
            ],
          ),
        ),
      ],
    );
  }

  Widget timelineLastRow(String title, String subTile) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 18,
                height: 18,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Text(""),
              ),
              Container(
                width: 3,
                height: 20,
                decoration: new BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                ),
                child: Text(""),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${title}\n ${subTile}',
                  style: TextStyle(fontSize: 14, color: Colors.black54)),
            ],
          ),
        ),
      ],
    );
  }
}

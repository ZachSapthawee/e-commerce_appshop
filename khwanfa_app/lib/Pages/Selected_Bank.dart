import 'package:flutter/material.dart';
import 'package:khwanfaapp/Pages/index.dart';
import 'package:khwanfaapp/Pages/slip.dart';


class Selected_Bank extends StatefulWidget {
  @override
  _Selected_BankState createState() => _Selected_BankState();
}

class _Selected_BankState extends State<Selected_Bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            margin: EdgeInsets.only(left: 25.0),
            child: Text(
              'ช่องทางการชำระเงิน',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: _bankList(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              SizedBox(width: 16),
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('แนบสลิปการโอนเงิน'),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Attach_slip()),
                  );
                },
              ),
              SizedBox(width: 16),
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('แนบสลิปการโอนทีหลัง'),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          color: Colors.white,
        )
    );
  }
  Widget _bankList() {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey[300],
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                    'กรุณาทำการชำระผ่านโมบายแบงค์กิ้งหรือที่เอทีเอ็มภายใน 48 ชม. ถ้าเลยกำหนดทางระบบจะยกเลิกออเดอร์ของคุณอัตโนมัติ'
                ),
              ),
            ),
            Container(
//              color: Colors.blue,
              height: 300,
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: FlutterLogo(size: 56.0),
                    title: Text('ธนาคารกสิกรไทย'),
                    subtitle: Text('XXX-X-XXXXX-X'),
                    trailing: Icon(Icons.radio_button_unchecked),
                  ),
                  ListTile(
                    leading: FlutterLogo(size: 56.0),
                    title: Text('ธนาคารกรุงไทย'),
                    subtitle: Text('XXX-X-XXXXX-X'),
                    trailing: Icon(Icons.radio_button_unchecked),
                  ),
                  ListTile(
                    leading: FlutterLogo(size: 56.0),
                    title: Text('ธนาคารไทยพาณิชย์'),
                    subtitle: Text('XXX-X-XXXXX-X'),
                    trailing: Icon(Icons.radio_button_unchecked),
                  ),
                  ListTile(
                    leading: FlutterLogo(size: 56.0),
                    title: Text('ธนาคารกรุงเทพ'),
                    subtitle: Text('XXX-X-XXXXX-X'),
                    trailing: Icon(Icons.radio_button_unchecked),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}

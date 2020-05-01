import 'package:flutter/material.dart';

class Attach_slip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left: 25.0),
              child: Text(
                'แนบสลิปการโอนเงิน',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10.0,left: 10.0),
              alignment: Alignment.topLeft,
                child: Text('อัปโหลดหลักฐานการชำระเงิน')
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Material(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.camera_alt,
                                color: Colors.deepPurple,
                                size: 50.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                              Text('แนบสลิป',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.white
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 16),
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('ส่ง'),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => Selected_Bank()),
//                  );
                },
              ),
              SizedBox(width: 16),
            ],
          ),
          color: Colors.white,
        )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:khwanfaapp/my_custom_icons_icons.dart';

//class login_page extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Container(
//          height: double.infinity,
//          color: Colors.red,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
////              SafeArea(
////                child: Container(
////                  height: double.infinity,
////                  decoration: BoxDecoration(
////                    image: DecorationImage(
////                      fit: BoxFit.cover,
////                      image: AssetImage(
////                        'images/drawable-xxxhdpi/bg_logo.png'
////                      ),
////                    ),
////                  ),
////                ),
////              ),
//              Container(
//                height: 160,
//                child: Image.network('/images/drawable-xxxhdpi/logo.png'),
//                color: Colors.red,
//              ),
////              Container(
////                child: RaisedButton(
////                  shape: RoundedRectangleBorder(
////                      borderRadius: BorderRadius.circular(10.0)
////                  ),
////                  padding: EdgeInsets.all(0.0),
////                  child: Ink(
////                    decoration: BoxDecoration(
////                        gradient: LinearGradient(colors: [Color(0xDDD53333),Color(0x444B0082)],
////                          begin: Alignment.centerLeft,
////                          end: Alignment(1.9, 1.0),
////                        ),
////                        borderRadius: BorderRadius.circular(10.0)
////                    ),
////                    child: Container(
////                      constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
////                      alignment: Alignment.center,
////                      child: Text(
////                        'สร้างบัญชี',
////                        textAlign: TextAlign.center,
////                        style: TextStyle(
////                            fontSize: 16.0,
////                            color: Colors.white
////                        ),
////                      ),
////                    ),
////                  ),
////                ),
////              ),
////              SizedBox(height: 10.0,),
////              Container(
////                child: RaisedButton(
////                  shape: RoundedRectangleBorder(
////                      borderRadius: BorderRadius.circular(10.0)
////                  ),
////                  padding: EdgeInsets.all(0.0),
////                  child: Ink(
////                    decoration: BoxDecoration(
////                        gradient: LinearGradient(colors: [Color(0xDDD53333),Color(0x444B0082)],
////                          begin: Alignment.centerLeft,
////                          end: Alignment(1.9, 1.0),
////                        ),
////                        borderRadius: BorderRadius.circular(10.0)
////                    ),
////                    child: Container(
////                      constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
////                      alignment: Alignment.center,
////                      child: Text(
////                        'เข้าสู่ระบบ',
////                        textAlign: TextAlign.center,
////                        style: TextStyle(
////                            fontSize: 16.0,
////                            color: Colors.white
////                        ),
////                      ),
////                    ),
////                  ),
////                ),
////              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

class login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drawable-xxxhdpi/bg_login.png',),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                child: Image(
                  image: AssetImage('images/drawable-xxxhdpi/logo.png'),
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xEEEE0000),Color(0x777300C8)],
                          begin: Alignment.centerLeft,
                          end: Alignment(0.5,4.3),
                        ),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        'สร้างบัญชี',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0x777300C8),Color(0xEEEE0000)],
                          begin: Alignment.centerLeft,
                          end: Alignment(0.5,4.3),
                        ),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        'เข้าสู่ระบบ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                child: Text(
                  'Or Singin with'
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
//                      border: Border.all(width: 1,
//                      color: Colors.deepPurple,
//                      ),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 290.0, minHeight: 48.0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(MyCustomIcons.facebook_squared_1,color: Colors.white,),
                          SizedBox(width: 10.0),
                          Text(
                            'Facebook',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


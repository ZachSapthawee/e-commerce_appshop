import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:khwanfaapp/Pages/order_list.dart';

import 'OrderStatus.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _Profile_Name(),
          _Navbarprofile(),
          Container(
            child: CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/200x150",
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter:
                      ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }

  Widget _Profile_Name() {
    return SizedBox(
      height: 200,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/drawable-xxxhdpi/bg_profile.png"),
            fit: BoxFit.cover,
          ),
        ),
//          height: 200,
//          //      width: MediaQuery
//          //          .of(context)
//          //          .size
//          //          .width,
//          color: Colors.amber,
        child: Center(
          child: ListTile(
            leading: FlutterLogo(size: 72.0),
            title: Text(
              'ทรัพย์ทวี  เพ็ชรสาย',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Widget _Navbarprofile() {
    return SizedBox(
      child: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 100,
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Order_list()),
                          );
                        },
                        // handle your onTap here
                        child: Container(
                          height: 80,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.credit_card,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                              Container(
                                child: Text('ที่ต้องชำระเงิน'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 100,
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () => print("Container pressed"),
                        // handle your onTap here
                        child: Container(
                          height: 80,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.work,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                              Container(
                                child: Text('เตรียมจัดส่ง'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => OderStatus()),
                          );
                        },
                        // handle your onTap here
                        child: Container(
                          height: 80,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.departure_board,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                              Container(
                                child: Text('ระหว่างขนส่ง'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}



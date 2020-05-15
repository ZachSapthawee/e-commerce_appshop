import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khwanfaapp/Pages/index.dart';
import 'package:khwanfaapp/widgets/login.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Khwanfa',
      theme: ThemeData(
        fontFamily: 'prompt',
        primarySwatch: Colors.red,
      ),
      home: Index(title: 'NavbarShow'),
    );
  }
}












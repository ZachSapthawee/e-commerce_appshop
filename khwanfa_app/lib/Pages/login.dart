import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("Sign in Email Clicked");
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width*0.9,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Sign-In with Email',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

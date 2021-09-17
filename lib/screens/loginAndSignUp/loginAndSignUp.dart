import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginAndSignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginAndSignUpState();
}

class LoginAndSignUpState extends State<LoginAndSignUp> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          color: Color(0xffbcbaba),
          margin: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(30.0),
                          bottomRight: const Radius.circular(30.0))),
                  child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(60.0),
                            child:
                            Image(image: AssetImage('images/logo_login.png')))
                      ],
                      TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.directions_car)),
                          Tab(icon: Icon(Icons.directions_transit)),
                          Tab(icon: Icon(Icons.directions_bike)),
                        ],
                      )
                  )),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';

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
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        pinned: _pinned,
        snap: _snap,
        floating: _floating,
        expandedHeight: 160.0,
        flexibleSpace: const FlexibleSpaceBar(
          title: Text(''),
          background: FlutterLogo(),
        ),
      ),
      AppBar(
        title: const Text('TabBar Widget'),
        bottom: const TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              icon: Icon(Icons.beach_access_sharp),
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
            ),
          ],
        ),
      ),
      TabBarView(
        children: <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    ]));
  }
}

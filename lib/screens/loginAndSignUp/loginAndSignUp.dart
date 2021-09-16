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
        backgroundColor: Colors.white,
        flexibleSpace: const FlexibleSpaceBar(
          title: Text(''),
          background: Image(image: AssetImage('images/logo_login.png')),
        ),
      ),
      SliverFillRemaining(
        child: new Container(
          child: DefaultTabController(
            initialIndex: 1,
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Text(''),
                bottom: const TabBar(
                  tabs: <Widget>[
                    Tab(
                        icon: Text("Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textDirection: TextDirection.ltr)),
                    Tab(
                      icon: Text("Sign-up",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.ltr),
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: <Widget>[
                  Center(
                    child: Text("Login Screen"),
                  ),
                  Center(
                    child: Text("Sign-up Screen"),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ]));
  }
}

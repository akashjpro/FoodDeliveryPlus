import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home/widgets/home_bridge.dart';

class LoginAndSignUp extends StatefulWidget {

  static String routeName = "/LoginAndSignUp";

  @override
  State<StatefulWidget> createState() => LoginAndSignUpState();
}

class LoginAndSignUpState extends State<LoginAndSignUp> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

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
          background: Image(image: AssetImage('assets/images/logo_login.png')),
        ),
      ),
      SliverFillRemaining(
        child: new Container(
          child: DefaultTabController(
            initialIndex: 0,
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text(''),
                bottom: TabBar(
                  indicatorColor: Color(0xFFFA4A0C),
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
              body: TabBarView(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Email address",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: 'Exo 2',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, top: 50),
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Dosamarvis@gmail.com',
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, right: 50),
                        ),
                        Container(
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: 'Exo 2',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, top: 50),
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: '* * * * * * * * ',
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, right: 50),
                        ),
                        Container(
                          child: Text(
                            "Forgot passcode?",
                            style: TextStyle(
                              color: Color(0xFFFA4A0C),
                              fontFamily: 'Exo 2',
                              fontSize: 17.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, top: 50),
                        ),
                        Container(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, HomeBridge.routeName);
                            },
                            child: Text('Login',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Exo 2',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFFFFFFFF))),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFFA4A0C))),
                          ),
                          margin: new EdgeInsets.only(
                              left: 50, top: 136, right: 50, bottom: 50),
                        ),
                      ],
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Email address",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: 'Exo 2',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, top: 50),
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Dosamarvis@gmail.com',
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, right: 50),
                        ),
                        Container(
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: 'Exo 2',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, top: 50),
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: '* * * * * * * * ',
                            ),
                          ),
                          margin: new EdgeInsets.only(left: 50, right: 50),
                        ),
                        Container(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            child: Text('Sign up',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Exo 2',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFFFFFFFF))),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFFA4A0C))),
                          ),
                          margin: new EdgeInsets.only(
                              left: 50, top: 136, right: 50, bottom: 50),
                        ),
                      ],
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                    ),
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

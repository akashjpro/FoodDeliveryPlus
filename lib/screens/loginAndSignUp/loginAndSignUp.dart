import 'package:flutter/material.dart';
import 'package:food_delivery/helper/api_helper.dart';
import 'package:food_delivery/model/request/login_request.dart';
import 'package:food_delivery/model/response/login_response.dart';
import 'package:food_delivery/screens/home/widgets/home_bridge.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginAndSignUp extends StatefulWidget {
  static String routeName = "/LoginAndSignUp";

  @override
  State<StatefulWidget> createState() => LoginAndSignUpState();
}

class LoginAndSignUpState extends State<LoginAndSignUp> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  bool _isDialogLoadingShowing = false;
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var apiHelper = ApiHelper();

  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

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
                            controller: _emailController,
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
                            controller: _passwordController,
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
                              _processLogin();
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

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _processLogin() {
    var email = _emailController.text;
    var password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _showAlertDialog("Error", "Email or password is not empty!");

      return;
    }

    _showLoaderDialog(context);

    var request = LoginRequest(email, password);
    var userId;
    var errorMessage;
    apiHelper.requestAPI<LoginResponse>(
        request,
        apiHelper.client.login(request),
        ((loginResponse) => {
              if (_isDialogLoadingShowing)
                {
                  Navigator.pop(context),
                  _isDialogLoadingShowing = false,
                },

              userId = loginResponse.userId,
              _savingTokenID(loginResponse.token),
              print("userId: $userId"),

              // Navigate to home
              Navigator.pushReplacementNamed(context, HomeBridge.routeName)
            }),
        (error) => {
              if (_isDialogLoadingShowing)
                {
                  Navigator.pop(context),
                  _isDialogLoadingShowing = false,
                },
              errorMessage = error.getErrorMessage(),
              print("errorMessage: $errorMessage"),

              //Show error login
              _showAlertDialog("Error", errorMessage)
            });
  }

  _savingTokenID(String token) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString('token', token);
    print(token);
  }

  _showAlertDialog(String title, String content) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("$title"),
          content: Text("$content"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  _showLoaderDialog(BuildContext context) {
    _isDialogLoadingShowing = true;
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

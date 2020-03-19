import 'package:flutter/material.dart';
import 'package:login_with_firebase/pages/login_signup_page.dart';
import 'package:login_with_firebase/services/authentication.dart';
import 'package:login_with_firebase/pages/home_page.dart';

enum AuthStatus {
  NOT_DETERMINED,
  NOT_LOGGED_IN,
  LOGGED_IN,
}

class RootPage extends StatefulWidget {
  RootPage({this.auth});

  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // 最初にルートページに来た時点ではユーザーはログインしていない
  AuthStatus authStatus = AuthStatus.NOT_DETERMINED;
  String _userId = "";

  @override
  void initState() {
    super.initState();
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        if (user != null) {
          _userId = user?.uid;
        }
        authStatus =
        user?.uid == null ? AuthStatus.NOT_LOGGED_IN : AuthStatus.LOGGED_IN;
      });
    });
  }



@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
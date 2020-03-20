import 'package:flutter/material.dart';
import 'package:login_with_firebase/services/authentication.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.auth, this.userId, this.logoutCallback}) : super(key: key);

  final BaseAuth auth;
  final String userId;
  final VoidCallback logoutCallback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter login demo"),
      ),
      body: Container(
        child: Text("Hello World"),
      ),
    );
  }
}
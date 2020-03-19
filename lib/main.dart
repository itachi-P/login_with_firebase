import 'package:flutter/material.dart';
import 'package:login_with_firebase/pages/login_signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login Demo',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: LoginSignupPage());
  }
}

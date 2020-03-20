import 'package:flutter/material.dart';
import 'package:login_with_firebase/services/authentication.dart';
import 'package:login_with_firebase/pages/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter login demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: RootPage(auth: Auth()),
    );
  }
}

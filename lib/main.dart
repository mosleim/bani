import 'package:bani/pages/home_page.dart';
import 'package:bani/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        HomePage.routeName : (ctx)=>HomePage(),
        LoginPage.routeName : (ctx)=>LoginPage()
      },
    );
  }
}

import 'package:bani/widgets/news_widget.dart';
import 'package:flutter/material.dart';

class CastPage extends StatelessWidget {
  static const routeName = "CastPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            Container(
              width: 300,
              child: TextField(
                style: TextStyle(color: Colors.black54),
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey,
          padding: EdgeInsets.all(5),
          child: ListView(
            children: <Widget>[
              NewsWidget(),
              NewsWidget(),
              NewsWidget(),
              NewsWidget(),
              NewsWidget(),
            ],
          )),
    );
  }
}

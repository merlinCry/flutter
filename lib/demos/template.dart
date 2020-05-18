import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('xxxDelmo')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  '描述'),
            ),
            // examples.....
          ],
        ),
      ),
    );
  }
}

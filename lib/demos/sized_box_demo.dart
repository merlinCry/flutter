import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text('提供固定宽高约束,其效果等同于ConstrainedBox的最大最小宽度相等，最大最小高度相等'),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Container(color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LimitedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LimitedBoxDemo')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text('LimitedBox的作用是当上游没有传下来约束时候，就用limitedBox设置的约束来限制下游组件（没人管的时候LimitedBox来管），如果上游有约束，如第一个蓝色组件，此时使用上游约束，limitedBox可视为不存在'),
            ),
            Container(
              height: 100,
              width: 100,
              child: LimitedBox(
                maxHeight: 50,
                maxWidth: 100,
                child: Container(color: Colors.blue,),
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                height: 50,
                color: Colors.green,
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(color: Colors.red),
            )
            // examples.....
          ],
        ),
      ),
    );
  }
}

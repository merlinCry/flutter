import 'package:flutter/material.dart';

class UnconstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('清除约束')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text('该组件用于阻断来自上层组件的约束，所以不限制子组件大小，虽然不向下传递约束了，但是子组件并不能比父组件大，超出的部分会被裁减掉'),
            ),
            Container(
              height: 300,
              width: 300,
              child: UnconstrainedBox(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Text('实际尺寸为100*100'),
                ),
              ),
            ),
            // examples.....
          ],
        ),
      ),
    );
  }
}

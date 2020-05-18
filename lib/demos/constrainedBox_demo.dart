import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('约束盒子')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text('该组件用来添加尺寸约束，约束其子组件最大最小宽高'),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 200),
              child: Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
            ),
            Text(r'''
            BoxConstraints的默认值是
              const BoxConstraints({
                this.minWidth = 0.0,
                this.maxWidth = double.infinity, //无限制
                this.minHeight = 0.0,
                this.maxHeight = double.infinity, //无限制
              });
            ''')
            // examples.....
          ],
        ),
      ),
    );
  }
}

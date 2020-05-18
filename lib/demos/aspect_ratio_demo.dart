import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AspectRatio指定子组件宽高比')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text(r'''
                红色Container大小与其自己设置的width没关系。
                这个组件的行为更准确的描述是 将其父组件传下来的约束更新为有一定宽高比的约束，然后作用于其子组件
                布局代码如下: 
                  void performLayout() {
                    size = _applyAspectRatio(constraints);
                    if (child != null)
                      child.layout(BoxConstraints.tight(size));
                  }

                  其中tight表示生成笃定大小的约束
                    BoxConstraints.tight(Size size)
                      : minWidth = size.width,
                        maxWidth = size.width,
                        minHeight = size.height,
                        maxHeight = size.height;
                '''),
            ),
            AspectRatio(
              aspectRatio: 2 / 1,
              child: Container(
                width: 200,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

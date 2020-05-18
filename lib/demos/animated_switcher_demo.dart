import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatefulWidget {
  @override
  _AnimatedSwitcherDemoState createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  var _index = 0;

  getChild(index) {
    var children = [
      Container(
        key: ValueKey("1"),
        width: 200,
        height: 200,
        color: Colors.orange,
      ),
      Container(
        key: ValueKey("2"),
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    ];
    return children[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('组件切换动画'),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.green,
      ),
      floatingActionButton: RaisedButton(
        onPressed: () {
          setState(() {
            _index = _index == 0 ? 1 : 0;
          });
        },
        child: Text('切换'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: this.getChild(_index),
              switchInCurve: Curves.easeIn,
              transitionBuilder: (Widget child, Animation<double> value) {
                return ScaleTransition(
                  child: child,
                  scale: value,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

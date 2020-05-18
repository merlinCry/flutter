import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo/demos/alert_demo.dart';
import 'package:flutter_demo/demos/align_demo.dart';
import 'package:flutter_demo/demos/animated_switcher_demo.dart';
import 'package:flutter_demo/demos/aspect_ratio_demo.dart';
import 'package:flutter_demo/demos/constrainedBox_demo.dart';
import 'package:flutter_demo/demos/limited_box_demo.dart';
import 'package:flutter_demo/demos/sized_box_demo.dart';
import 'package:flutter_demo/demos/unconstrined_box_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFFE94709),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(title: '组件列表'),
        "AlertDialog": (context) => AlertDemo(),
        "Align": (context) => AlignDemo(),
        "AnimatedSwitche": (context) => AnimatedSwitcherDemo(),
        "ConstrainedBox": (context) => ConstrainedBoxDemo(),
        "UnconstrainedBox": (context) => UnconstrainedBoxDemo(),
        "SizedBox": (context) => SizedBoxDemo(),
        "AspectRatio": (context) => AspectRatioDemo(),
        "LimitedBox": (context) => LimitedBoxDemo(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final widgetsList = ['AlertDialog', 'Align', 'AnimatedSwitche', 'ConstrainedBox', 'UnconstrainedBox', 'SizedBox', 'AspectRatio', 'LimitedBox'];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListTile(
              title: Text(widget.widgetsList[index]),
              onTap: () {
                Navigator.pushNamed(context, widget.widgetsList[index]);
              },
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(height: 1,),
        itemCount: widget.widgetsList.length,
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';

class AlertDemo extends StatelessWidget {
  // 基础弹出款
  baseAlert(ct) async {
    var result = await showDialog(
        context: ct,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text('上面标题 中间内容 底下按钮'),
            backgroundColor: Colors.green,
            elevation: 24,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.of(context).pop('cancel');
                },
              ),
              FlatButton(
                child: Text('确认'),
                onPressed: () {
                  Navigator.of(context).pop('ok');
                },
              ),
            ],
          );
        });
    print('$result');
  }

  // SimpleDialog
  simple(ct) async {
    var result = await showDialog(
        context: ct,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('提示'),
            children: <Widget>[
              Container(
                height: 80,
                alignment: Alignment.center,
                child: Text('上面标题 剩下都是内容，放在column中'),
              ),
              Divider(
                height: 1,
              ),
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.of(context).pop('cancel');
                },
              ),
              Divider(
                height: 1,
              ),
              FlatButton(
                child: Text('确认'),
                onPressed: () {
                  Navigator.of(context).pop('ok');
                },
              ),
            ],
          );
        });
    print('$result');
  }

  // 完全自定义
  custom(ct) async {
    var result = await showDialog(
        context: ct,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Center(child:Text('完全自定义,其实showDialog方法就是push一个定制的路由，而路由就是一层Overlay组件')),
            ),
            shape: CircleBorder(),
          );
        });
    print('$result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDelmo')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
                onPressed: () => this.baseAlert(context),
                child: Text('AlertDialog')),
            RaisedButton(
                onPressed: () => this.simple(context),
                child: Text('SimpleDialog')),
            RaisedButton(
                onPressed: () => this.custom(context), child: Text('Dialog')),
          ],
        ),
      ),
    );
  }
}

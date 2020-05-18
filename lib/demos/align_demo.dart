
import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlignDelmo')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text('''
                Align是个直接继承SingleChildRenderObjectWidget的基础组件其功能是控制子控件位置。
               其RenderObject是RenderPositionedBox,对子组件采用宽松限制(宽高约束都是0-constraints.max),
               通过alignChild方法为其子组件设置offset，达到控制位置的目的。Center组件直接继承Align。
              '''),
            ),
            Container(
              color: Colors.lightBlue,
              width: 200,
              height: 200,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text('哈哈哈',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
 
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CardCell extends StatelessWidget {
  final String name;

  CardCell(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      height: 100,
      child: Card(
        child: Text(name),
      ),
    );
  }
}

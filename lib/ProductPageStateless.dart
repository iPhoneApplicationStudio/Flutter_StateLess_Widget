
import 'package:flutter/material.dart';




class ProductsWidget_StateLess extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new TitleCheckRow(Text(
              "Do you want to purchase Product 1",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            )),
            new TitleCheckRow(Text(
              "Do you want to purchase Product 2",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            )),
            new TitleCheckRow(Text(
              "Do you want to purchase Product 3",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            )),
            new TitleCheckRow(Text(
              "Do you want to purchase Product 4",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            )),
            new TitleCheckRow(Text(
              "Do you want to purchase Product 5",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            ))
          ],
        ),
      ),
    );
  }
}


class TitleCheckRow extends StatelessWidget {
  TitleCheckRow(this.TextInput);
  final Widget TextInput;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextInput,
        Checkbox(
            value: checkBoxValue,
            onChanged: (bool newValue) {
              checkBoxValue = newValue;
            }),
      ],
    );
  }
}
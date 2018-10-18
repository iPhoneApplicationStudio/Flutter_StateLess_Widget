import 'package:flutter/material.dart';







class ProductsWidget_StateFull extends StatefulWidget
{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductsWidgetState();
  }
}

class ProductsWidgetState extends State<ProductsWidget_StateFull>
{
  var checkBoxList = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new TitleCheckRowSF(Text(
              "Do you want to purchase Product 10",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            ), checkBoxList[0]),
            new TitleCheckRowSF(Text(
              "Do you want to purchase Product 2",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            ), checkBoxList[1]),
            new TitleCheckRowSF(Text(
              "Do you want to purchase Product 3",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            ), checkBoxList[2]),
            new TitleCheckRowSF(Text(
              "Do you want to purchase Product 4",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            ), checkBoxList[3]),
            new TitleCheckRowSF(Text(
              "Do you want to purchase Product 5",
              style: TextStyle(fontSize: 21.0, color: Colors.black),
            ), checkBoxList[4])
          ],
        ),
      ),
    );
  }
}

class TitleCheckRowSF extends StatefulWidget {
  TitleCheckRowSF(this.TextInput, this.isChecked);
   Widget TextInput;
   bool isChecked;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TitleCheckRowSFState();
  }
}

class TitleCheckRowSFState extends State<TitleCheckRowSF> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        widget.TextInput,
        Checkbox(
            value: checkBoxValue,
            onChanged: (bool newValue) {
              print(newValue);
              checkBoxValue = newValue;
            }),
      ],
    );
  }
}

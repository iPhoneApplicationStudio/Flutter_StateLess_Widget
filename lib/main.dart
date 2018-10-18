import 'package:flutter/material.dart';
import 'ProductPageStateless.dart';
import 'ProductPageStateFull.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stateless Widget",
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Stateless Widget",
            style: TextStyle(fontSize: 27.0, color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: new ProductsWidget_StateLess(),
        //body: new ProductsWidget_StateFull(),
      ),
    );
  }
}




/*
Key Note:-
A stateless widget can only be drawn only once when the Widget is loaded,
which means we can’t redraw the Widget based on any events or user actions.

Stateful Widgets overcomes the reloading deficiencies of the Stateless Widgets.
A Stateful Widget can be loaded many times by calling setState().
This will trigger the build(BuildContext ctxt) to be called again.

The creation of Stateful Widgets are different than creating Stateless Widget as we need to create 2 classes,
one is derived from Stateful Widget and another is derived from Generic State<>.
 */

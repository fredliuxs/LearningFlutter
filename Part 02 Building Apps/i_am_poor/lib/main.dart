/// Flutter code sample for Scaffold

// This example shows a [Scaffold] with a [body] and [FloatingActionButton].
// The [body] is a [Text] placed in a [Center] in order to center the text
// within the [Scaffold]. The [FloatingActionButton] is connected to a
// callback that increments a counter.
//
// ![The Scaffold has a white background with a blue AppBar at the top. A blue FloatingActionButton is positioned at the bottom right corner of the Scaffold.](https://flutter.github.io/assets-for-api-docs/assets/material/scaffold.png)

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("I Am Poor App Challenge")),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                "https://moneydoneright.com/wp-content/uploads/2018/04/Why-Am-I-Poor.png"),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
    ));

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Adaptive(),
    ));

class Adaptive extends StatefulWidget {
  const Adaptive({Key? key}) : super(key: key);

  @override
  _AdaptiveState createState() => _AdaptiveState();
}

class _AdaptiveState extends State<Adaptive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Adaptive"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider.adaptive(
              onChanged: (double newValue) {},
              value: 1,
            ),
            SwitchListTile.adaptive(
              title: Text("Switch List Tile"),
              onChanged: (bool newValue) {},
              value: true,
            ),
            Switch.adaptive(
              onChanged: (bool newValue) {},
              value: true,
            ),
          ],
        ),
      ),
    );
  }
}

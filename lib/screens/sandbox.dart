import 'package:flutter/material.dart';

class sandBox extends StatefulWidget {
  sandBox({Key key}) : super(key: key);

  @override
  _sandBoxState createState() => _sandBoxState();
}

class _sandBoxState extends State<sandBox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
      duration: Duration(seconds: 1),
      margin: EdgeInsets.all(_margin),
      width: _width,
      color: _color,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(child: Text('animate margin'), onPressed: () => setState(() => _margin = 50)),
            RaisedButton(
                child: Text('animate color'), onPressed: () => setState(() => _color = Colors.purpleAccent[800])),
            RaisedButton(child: Text('animate width'), onPressed: () => setState(() => _width = 500)),
            RaisedButton(child: Text('animate opacity'), onPressed: () => setState(() => _opacity = 0)),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text('Hide me!'),
            )
          ],
        ),
      ),
    ));
  }
}

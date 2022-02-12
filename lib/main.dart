import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: RaisedButton(
            onPressed: () {
              print('left button got pressed');
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              print('right button got pressed');
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
      ]),
    );
  }
}

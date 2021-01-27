import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything')),
            backgroundColor: Colors.indigo,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int number = 1;

  void change(){
    setState(() {
     number= Random().nextInt(5)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
              //flex: 2,
              child: FlatButton(

                onPressed: (){
                  change();
                },
                child: Image.asset('images/ball$number.png'),
              ),
            ),
          ],
      ),
    );
  }
}


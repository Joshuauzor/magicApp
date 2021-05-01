// import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(magic());

class magic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myMagic(),
    );
  }
}

class myMagic extends StatefulWidget {
  @override
  _myMagicState createState() => _myMagicState();
}

class _myMagicState extends State<myMagic> {
  int imageNum = 3;

  // function
  int changeAns() {
    return Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joshua's Magic App"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    // function
                    imageNum = changeAns();
                  });
                },
                child: Image.asset('images/ball$imageNum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

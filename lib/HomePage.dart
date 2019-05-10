import 'package:flutter/material.dart';
import "./NumberAudio.dart";
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();
  List<NumberAudio> numberList = [
    NumberAudio("one.wav", Colors.green, "One"),
    NumberAudio("two.wav", Colors.orange, "Two"),
    NumberAudio("three.wav", Colors.black, "Three"),
    NumberAudio("four.wav", Colors.blue, "Four"),
    NumberAudio("five.wav", Colors.indigo, "Five"),
    NumberAudio("six.wav", Colors.pink, "Six"),
    NumberAudio("seven.wav", Colors.grey, "Seven"),
    NumberAudio("eight.wav", Colors.lime, "Eight"),
    NumberAudio("nine.wav", Colors.red, "Nine"),
    NumberAudio("ten.wav", Colors.lightBlue, "Ten"),
  ];
  play(String uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish Number"),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("./images/logo.png")),
            Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.all(10.0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 3,
                    ),
                    itemCount: numberList.length,
                    itemBuilder: (context, i) => SizedBox(
                          child: RaisedButton(
                            child: Text(numberList[i].buttonText,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0)),
                            color: numberList[i].buttonColor,
                            onPressed: () {
                              this.play(numberList[i].audioUri);
                            },
                          ),
                        ))),
            Text("Develope By Karan Soni",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'class.dart';
import 'package:audioplayers/audio_cache.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage p = AssetImage("images/logo.png");

AudioCache audioPlayer = AudioCache();

List<NumberAudio> numberList =[
NumberAudio("f1.mp3",Colors.red,"TAP"),
NumberAudio("f2.mp3",Colors.blue,"TAP"),
NumberAudio("f3.mp3",Colors.blue,"TAP"),
NumberAudio("f4.mp3",Colors.red,"TAP"),
NumberAudio("f5.mp3",Colors.red,"TAP"),
NumberAudio("f6.mp3",Colors.blue,"TAP"),
NumberAudio("f7.mp3",Colors.blue,"TAP"),
NumberAudio("f8.mp3",Colors.red,"TAP"),
NumberAudio("f9.mp3",Colors.red,"TAP"),
NumberAudio("f10.mp3",Colors.blue,"TAP"),
];

play(String uri){
  audioPlayer.play(uri);
}


List<String> itemArray;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: Text("AUDO"),

),
body: Container(
  child: Center(
    child: Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/brain.png"),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(10.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.0,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: numberList.length,
            itemBuilder: (context ,i) => SizedBox(
              width: 100.0,
              height: 50.0,
              child: RaisedButton(
                color: numberList[i].buttonColor,
                child: Text(numberList[i].buttonText,
                style:TextStyle(
                  fontSize:20.0,
                  color:Colors.white,
                ),
                ),
                onPressed: (){
                  play(numberList[i].audioUri);
                },
              ),
            ),
          ),
        )
      ],
    ),
  ),
),

    );
  }
}
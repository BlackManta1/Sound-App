import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

// other syntax
//void main() => runApp(MyApp());

// stateless widget
// for get the hot reload
// ATL + ENTER pour wrapper du text
class MyApp extends StatelessWidget {
  void playSound(int soundNum) {
    AudioCache player = AudioCache();
    player.play('sound$soundNum.mp3');
  }

  Widget createButton(Color myButtonColor, Color myIconColor, int pisteNum) {
    return Expanded(
      child: RaisedButton(
        color: myButtonColor,
        onPressed: () {
          playSound(pisteNum);
        },
        child: Icon(
          Icons.music_note,
          size: 50,
          color: myIconColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Center(
            child: Column(
              // for take all the width
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                createButton(Colors.redAccent, Colors.black, 1),
                createButton(Colors.yellowAccent, Colors.deepPurple, 2),
                createButton(Colors.brown, Colors.orange, 3),
                createButton(Colors.blue, Colors.white, 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

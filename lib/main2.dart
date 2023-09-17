import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


//Xylophone with functions



void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache _audioCache = AudioCache();

  void playSound(int soundNumber)
  {
        final player = AudioPlayer();
        player.play(AssetSource('note$soundNumber.wav'));
  }
 buildKey({required Color color, required int soundNumber})
  {
    return Expanded(
      child:Container(
        color: color,
        child: GestureDetector(
          onTap: () async{
            playSound(soundNumber);
          },
        ),
      )
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget> [
                buildKey(color: Colors.red,soundNumber: 1),
                buildKey(color: Colors.orange,soundNumber: 2),
                buildKey(color: Colors.yellow,soundNumber: 3),
                buildKey(color: Colors.green,soundNumber: 4),
                buildKey(color: Colors.teal,soundNumber: 5),
                buildKey(color: Colors.blue,soundNumber: 6),
                buildKey(color: Colors.purple,soundNumber: 7),



                
               






              ],
            ),
          )
      ),
    );
  }
}

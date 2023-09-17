import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache _audioCache = AudioCache();

  void playsound(int soundNumber)
  {
      final player = AudioCache();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SafeArea(
          child: Column(
          children: [

            Expanded(
            child:Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: GestureDetector(
                    onTap: () async{
                      final player =AudioPlayer();
                      player.play(AssetSource('note1.wav'));
                    },
                  ),
            ),),

            Expanded(
              child: Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: GestureDetector(
                  onTap: () async{
                    final player =AudioPlayer();
                    player.play(AssetSource('note2.wav'));
                  },
                ),

              ),
            ),

            Expanded(
              child: Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                color: Colors.yellow,
                child: GestureDetector(
                  onTap: () async{
                    final player =AudioPlayer();
                    player.play(AssetSource('note3.wav'));
                  },
                ),

              ),
            ),

            Expanded(
              child: Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                color: Colors.lightGreen,
                child: GestureDetector(
                  onTap: () async{
                    final player =AudioPlayer();
                    player.play(AssetSource('note4.wav'));
                  },
                ),

              ),
            ),

            Expanded(
              child: Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                color: Colors.green,
                child: GestureDetector(
                  onTap: () async{
                    final player =AudioPlayer();
                    player.play(AssetSource('note5.wav'));
                  },
                ),

              ),
            ),

            Expanded(
              child: Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: GestureDetector(
                  onTap: () async{
                    final player =AudioPlayer();
                    player.play(AssetSource('note6.wav'));
                  },
                ),

              ),
            ),

            Expanded(
              child: Container(
                height: 50,
                width:MediaQuery.of(context).size.width,
                color: Colors.purple,
                child: GestureDetector(
                  onTap: () async{
                    final player =AudioPlayer();
                    player.play(AssetSource('note7.wav'));
                  },
                ),

              ),
            ),


          ],
          ),
        )
      ),
    );
  }
}


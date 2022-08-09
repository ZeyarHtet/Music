import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer audioPlayer = AudioPlayer();

  String url = "https://msicoursematerial.s3.us-west-2.amazonaws.com/-La_min_Lay_(getmp3.pro).mp3";

   play() async {
    int result = await audioPlayer.play(url);
    if (result == 1) {
      print("Play");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Music Player"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Moon.jpg") , fit: BoxFit.cover
          )
        ),
    
        child: Center(child: ElevatedButton(
          onPressed: (() {
            play();

          }),
          child: const Text("Play"),
          
        ),),
      
      ),
      
      
    );
  }
}
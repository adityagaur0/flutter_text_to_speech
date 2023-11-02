import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:text_to_speech/tts_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  // final FlutterTts flutterTts = FlutterTts();
  final TTSService ttsService =
      TTSService(); // Create an instance of TTSService

  final TextEditingController _textEditingController = TextEditingController();

  // speak(String text) async {
  //   await flutterTts.setLanguage("en-US");
  //   await flutterTts.setPitch(1); // 0.5 to 1.5 // pitch of sound
  //   await flutterTts.setVolume(1.0); //volume of speech
  //   await flutterTts.setSpeechRate(0.5); //speed of speech
  //   await flutterTts.speak(text);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _textEditingController,
                ),
                ElevatedButton(
                  onPressed: () =>
                      ttsService.speak(_textEditingController.text),
                  child: Text("Start Text to Speech"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop(); // Stop any ongoing speech
    //flutterTts.shutdown(); // Release FlutterTts resources
    super.dispose();
  }
}

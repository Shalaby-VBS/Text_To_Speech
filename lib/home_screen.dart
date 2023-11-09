import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final String message =
      "Hello everyone, I'm Shalaby & I'm A Flutter Developer!";
  final tts = TextToSpeech();

  void speak() async {
    await tts.setVolume(1.0);
    await tts.setRate(1.0);
    await tts.setPitch(1.0);
    await tts.speak(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFDC830),
              Color(0xffF37335),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              speak();
            },
            child: Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Speak",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:text_to_speech/text_to_speech.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TexttoSpeech(),
  ));
}

class TexttoSpeech extends StatefulWidget {
  const TexttoSpeech({Key? key}) : super(key: key);

  @override
  State<TexttoSpeech> createState() => _TexttoSpeechState();
}

class _TexttoSpeechState extends State<TexttoSpeech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'English Words Package Impoerted',
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => RandomWord()),
                );
              },
              icon: Icon(FontAwesomeIcons.shuffle))
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (c, i) {
              return ListTile(
                title: Text("${nouns[i]} - ${adjectives[i]}"),
              );
            }),
      ),
    );
  }
}

class RandomWord extends StatefulWidget {
  RandomWord({Key? key}) : super(key: key);

  @override
  State<RandomWord> createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  var generateWords = adjectives[Random().nextInt(10)];
  var colors = [Colors.red, Colors.green, Colors.blue, Colors.orange];
  var generateWordsWithFirstLetteruppercase;
  TextToSpeech tts = TextToSpeech();

  @override
  void initState() {
    super.initState();
    generateWordsWithFirstLetteruppercase = generateWords.replaceFirst(
        generateWords[0], generateWords[0].toUpperCase(), 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {
          tts.speak(generateWordsWithFirstLetteruppercase);
        },
        onDoubleTap: () {
          Navigator.pop(context);
        },
        child: Text(
          generateWordsWithFirstLetteruppercase,
          style: TextStyle(
              fontSize: 90, color: colors[Random().nextInt(colors.length)]),
        ),
      )),
    );
  }
}

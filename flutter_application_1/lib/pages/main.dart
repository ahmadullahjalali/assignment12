import 'package:flutter/material.dart';
import 'english_word.dart';
import 'flutter_toast.dart';
import 'fontawesome.dart';
import 'photo_view.dart';
import 'rflutter.dart';
import 'share_plus.dart';
import 'text_to_speech.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TopSeven(),
  ));
}

class TopSeven extends StatefulWidget {
  const TopSeven({super.key});

  @override
  State<TopSeven> createState() => _TopSevenState();
}

class _TopSevenState extends State<TopSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Top Seven Flutter Packages',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListTile(
            title: Text(
              'English_Words Packages',
              style: TextStyle(fontSize: 22.0),
            ),
            leading: Icon(
              Icons.wordpress,
              size: 40.0,
              color: Colors.deepOrange,
            ),
            splashColor: Colors.lightGreen,
            subtitle: Text('Click to see More...'),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              });
            },
          )),
          Expanded(
              child: ListTile(
            title: Text(
              'FontAwesome Packages',
              style: TextStyle(fontSize: 22.0),
            ),
            leading: Icon(
              Icons.font_download,
              size: 40.0,
              color: Colors.deepOrange,
            ),
            splashColor: Colors.lightGreen,
            subtitle: Text('Click to see More...'),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FontAwesome()));
              });
            },
          )),
          Expanded(
              child: ListTile(
            title: Text(
              'rFlutter Package',
              style: TextStyle(fontSize: 22.0),
            ),
            leading: Icon(
              Icons.message,
              size: 40.0,
              color: Colors.deepOrange,
            ),
            splashColor: Colors.lightGreen,
            subtitle: Text('Click to see More...'),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => rFlutter()));
              });
            },
          )),
          Expanded(
              child: ListTile(
            title: Text(
              'flutter_toast Packages',
              style: TextStyle(fontSize: 22.0),
            ),
            leading: Icon(
              Icons.tonality_sharp,
              size: 40.0,
              color: Colors.deepOrange,
            ),
            splashColor: Colors.lightGreen,
            subtitle: Text('Click to see More...'),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlutterToast()));
              });
            },
          )),
          Expanded(
              child: ListTile(
            title: Text(
              'Photo_View Packages',
              style: TextStyle(fontSize: 22.0),
            ),
            leading: Icon(
              Icons.picture_as_pdf,
              size: 40.0,
              color: Colors.deepOrange,
            ),
            splashColor: Colors.lightGreen,
            subtitle: Text('Click to see More...'),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              });
            },
          )),
          Expanded(
              child: ListTile(
            title: Text(
              'Share_Plus Packages',
              style: TextStyle(fontSize: 22.0),
            ),
            leading: Icon(
              Icons.share,
              size: 40.0,
              color: Colors.deepOrange,
            ),
            splashColor: Colors.lightGreen,
            subtitle: Text('Click to see More...'),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SharePlus()));
              });
            },
          )),
          Expanded(
              child: ListTile(
            title: Text(
              'Text_to_Speech Packages',
              style: TextStyle(fontSize: 22.0),
            ),
            leading: Icon(
              Icons.volume_down,
              size: 40.0,
              color: Colors.deepOrange,
            ),
            splashColor: Colors.lightGreen,
            subtitle: Text('Click to see More...'),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TexttoSpeech()));
              });
            },
          )),
        ],
      ),
    );
  }
}

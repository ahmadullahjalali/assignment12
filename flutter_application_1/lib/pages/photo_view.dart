import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() => runApp(MaterialApp(
      title: "Photo_View Liberary",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo_View Liberary"),
      ),
      body: Container(
          child: PhotoView(
        imageProvider: AssetImage("images/Penguins.jpg"),
      )),
    );
  }
}

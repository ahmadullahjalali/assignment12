import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FontAwesome(),
  ));
}

class FontAwesome extends StatefulWidget {
  const FontAwesome({super.key});

  @override
  State<FontAwesome> createState() => _FontAwesomeState();
}

class _FontAwesomeState extends State<FontAwesome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font_Awesome_Flutter Package is perfect'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              child: Icon(
                FontAwesomeIcons.apple,
                size: 40.0,
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            MaterialButton(
              onPressed: () {},
              child: Icon(
                FontAwesomeIcons.hourglassEnd,
                size: 40.0,
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            MaterialButton(
              onPressed: () {},
              child: Icon(
                FontAwesomeIcons.tree,
                size: 40.0,
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            MaterialButton(
              onPressed: () {},
              child: Icon(
                FontAwesomeIcons.redRiver,
                size: 40.0,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

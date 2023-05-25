import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SharePlus(),
  ));
}

class SharePlus extends StatefulWidget {
  const SharePlus({super.key});

  @override
  State<SharePlus> createState() => _SharePlusState();
}

class _SharePlusState extends State<SharePlus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Plus Package imported'),
      ),
      body: Container(
        child: IconButton(
            onPressed: () {
              Share.share('https://facebook.com');
            },
            icon: Icon(Icons.share)),
      ),
    );
  }
}

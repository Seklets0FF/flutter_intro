import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

void main() => runApp(Intro());

class Intro extends StatelessWidget {
  final pages = [
    PageViewModel(
        pageColor: Colors.pinkAccent,
        // bubble: Icon(Icons.looks_one),
        body: Text('Body Moscow'),
        title: Text('Title Moscow'),
        textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.indigoAccent),
        mainImage: Image.asset('assets/images/moscow.png')),
    PageViewModel(
        pageColor: Colors.blue,
        // bubble: Icon(Icons.looks_two),
        body: Text('Body New York'),
        title: Text('Title New York'),
        textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.yellow),
        mainImage: Image.asset('assets/images/new-york.png')),
    PageViewModel(
        pageColor: Colors.yellow,
        // bubble: Icon(Icons.looks_3),
        body: Text('Body London'),
        title: Text('Title London'),
        textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.green),
        mainImage: Image.asset('assets/images/london.png')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intro Flutter',
      theme: ThemeData.light(),
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showBackButton: false,
          showNextButton: false,
          showSkipButton: true,
          onTapDoneButton: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              )),
          onTapSkipButton: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => HomePage(),
          )),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Intro'),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'home_page.dart'; // Import HomePage class

void main() => runApp(PetuApp());

class PetuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

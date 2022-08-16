import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallsample_flutter/screens/home_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: Home_page(),
    );
  }
}

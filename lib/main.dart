import 'package:flutter/material.dart';
import 'homepage.dart';
void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'hello world',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: homepage(),
    );

  }
}
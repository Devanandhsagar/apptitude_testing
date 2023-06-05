import 'dart:html';

import 'package:flutter/material.dart';
class Ages extends StatefulWidget {
  const Ages({Key? key}) : super(key: key);

  @override
  State<Ages> createState() => _AgesState();
}

class _AgesState extends State<Ages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('Ages'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        ListTile(
          title: Text('1)  Given two past ratios and two Futuer ratios .Find the Present ages'),onTap: (){

        },
        ),
        ListTile(
          title: Text('2)  Given two past ratios and two Futer ratios .Find the Present ages'),onTap: (){},
        ),
        ListTile(
          title: Text('3)  Given two past ratios and two Futer ratios .Find the Present ages'),onTap: (){},
        ),
        ListTile(
          title: Text('4)  Given two past ratios and two Futer ratios .Find the Present ages'),onTap: (){},
        ),
        ListTile(
          title: Text('5)  Given two past ratios and two Futer ratios .Find the Present ages'),onTap: (){},
        ),
      ],

      ),
    );
  }
}

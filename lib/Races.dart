import 'package:flutter/material.dart';
class Races extends StatefulWidget {
  const Races({Key? key}) : super(key: key);

  @override
  State<Races> createState() => _RacesState();
}

class _RacesState extends State<Races> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('Races and Games'),
      ),
    );
  }
}

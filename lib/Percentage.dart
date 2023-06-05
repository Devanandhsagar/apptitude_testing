import 'package:flutter/material.dart';
class Percentage extends StatefulWidget {
  const Percentage({Key? key}) : super(key: key);

  @override
  State<Percentage> createState() => _PercentageState();
}

class _PercentageState extends State<Percentage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('Percentage'),
      ),
    );
  }
}

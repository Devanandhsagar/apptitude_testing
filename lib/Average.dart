import 'package:flutter/material.dart';
class Average extends StatefulWidget {
  const Average({Key? key}) : super(key: key);

  @override
  State<Average> createState() => _AverageState();
}

class _AverageState extends State<Average> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('Average'),
      ),
    );
  }
}

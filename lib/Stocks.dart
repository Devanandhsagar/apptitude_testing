import 'package:flutter/material.dart';
class Stocks extends StatefulWidget {
  const Stocks({Key? key}) : super(key: key);

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('Stocks and Shares'),
      ),
    );
  }
}

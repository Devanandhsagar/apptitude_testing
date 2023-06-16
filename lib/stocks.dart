import 'package:apptitude_test/stock1.dart';
import 'package:apptitude_test/stock10.dart';
import 'package:apptitude_test/stock2.dart';
import 'package:apptitude_test/stock3.dart';
import 'package:apptitude_test/stock4.dart';
import 'package:apptitude_test/stock5.dart';
import 'package:apptitude_test/stock6.dart';
import 'package:apptitude_test/stock7.dart';
import 'package:apptitude_test/stock8.dart';
import 'package:apptitude_test/stock9.dart';
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
        centerTitle: true,title: const Text('Stocks and Shares'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: const Text('1)  Given cost price and discount and brokerage ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer1()));
          },
          ),
          ListTile(
            title: const Text('2)  Given selling percentage and price , brokerage ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer2()));
          },
          ),
          ListTile(
            title: const Text('3)  Given market value each and purcased price and brokerage ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer3()));
          },
          ),
          ListTile(
            title: const Text('4)  Given invest percentage and price ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer4()));
          },
          ),
          ListTile(
            title: const Text('5)  Given invested and share , quoted is rupees and dividend ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer5()));
          },
          ),
          ListTile(
            title: const Text('6)  Given n percentage stocks yields n percentage ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer6()));
          },
          ),
          ListTile(
            title: const Text('7)   Given invested price and percentage stock and obtain income  ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer7()));
          },
          ),
          ListTile(
            title: const Text('8)  Given income and percentage stock at price  ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer8()));
          },
          ),
          ListTile(
            title: const Text('9)  Given person_1 n % stock , price and person_2 price ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer9()));
          },
          ),
          ListTile(
            title: const Text('10)  Given buys share and dividend % and % on investment ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const StockAnswer10()));
          },
          ),
        ],

      ),
    );
  }
}

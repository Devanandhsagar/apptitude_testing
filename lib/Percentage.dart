import 'package:apptitude_test/percenatge1.dart';
import 'package:apptitude_test/percentage10.dart';
import 'package:apptitude_test/percentage2.dart';
import 'package:apptitude_test/percentage3.dart';
import 'package:apptitude_test/percentage4.dart';
import 'package:apptitude_test/percentage5.dart';
import 'package:apptitude_test/percentage6.dart';
import 'package:apptitude_test/percentage7.dart';
import 'package:apptitude_test/percentage8.dart';
import 'package:apptitude_test/percentage9.dart';
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
        centerTitle: true,title: const Text('Percentage'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: const Text('1)  Given fraction expressed in percentage ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer1()));
          },
          ),
          ListTile(
            title: const Text('2)  Given n percentage of value ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer2()));
          },
          ),
          ListTile(
            title: const Text('3)  Given value and commission rate ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer3()));
          },
          ),
          ListTile(
            title: const Text('4)  Given n % of value and another n % of value ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer4()));
          },
          ),
          ListTile(
            title: const Text('5)  Given person_1 kg and person_2 kg  ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer5()));
          },
          ),
          ListTile(
            title: const Text('6)  Given n litres and solution ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer6()));
          },
          ),
          ListTile(
            title: const Text('7)  Given n % of number and n % .find the number  ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer7()));
          },
          ),
          ListTile(
            title: const Text('8)  Given company pay rent and discount .find the annual ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer8()));
          },
          ),
          ListTile(
            title: const Text('9)  Given n % and two values cost is n1,n2 ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer9()));
          },
          ),
          ListTile(
            title: const Text('10)  Given  n vacancies and n % rejected in interview ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PercentageAnswer10()));
          },
          ),
        ],

      ),
    );
  }
}

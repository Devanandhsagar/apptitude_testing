import 'package:flutter/material.dart';

import 'average_answer_1.dart';
import 'average_answer_10.dart';
import 'average_answer_2.dart';
import 'average_answer_3.dart';
import 'average_answer_4.dart';
import 'average_answer_5.dart';
import 'average_answer_6.dart';
import 'average_answer_7.dart';
import 'average_answer_8.dart';
import 'average_answer_9.dart';
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
        centerTitle: true,title: const Text('Average'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: const Text('1)  Given weights of the a all persons and no of persons ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer1()));
          },
          ),
          ListTile(
            title: const Text('2)  Given incomes and no of persons and find arthmetic mean ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer2()));
          },
          ),
          ListTile(
            title: const Text('3)  Given n numbers and multiples of n find the average ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer3()));
          },
          ),
          ListTile(
            title: const Text('4)  Given n boys average and n remaing boys average find the all boys average ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer4()));
          },
          ),
          ListTile(
            title: const Text('5)  Given average of subject marks n students and average  and misread of n students with marks   ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer5()));
          },
          ),
          ListTile(
            title: const Text('6)  Given average of n students is average and frist two students and average and last two students average ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer6()));
          },
          ),
          ListTile(
            title: const Text('7)  Given n students and average and one students is add and average increase by n  ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer7()));
          },
          ),
          ListTile(
            title: const Text('8)  Given n numbers and n mean find the sum all numbers  ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer8()));
          },
          ),
          ListTile(
            title: const Text('9)  Given n teachers and new teacher age and n years reduced age find old teacher age ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer9()));
          },
          ),
          ListTile(
            title: const Text('10)  Given n students and average and passed average and falied average ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AvgAnswer10()));
          },
          ),
        ],

      ),
    );
  }
}

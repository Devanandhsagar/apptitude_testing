
import 'package:apptitude_test/ages_answer1.dart';
import 'package:flutter/material.dart';

import 'ages_answer_10.dart';
import 'ages_answer_2.dart';
import 'ages_answer_3.dart';
import 'ages_answer_4.dart';
import 'ages_answer_5.dart';
import 'ages_answer_6.dart';
import 'ages_answer_7.dart';
import 'ages_answer_8.dart';
import 'ages_answer_9.dart';
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
        centerTitle: true,title: const Text('Ages'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        ListTile(
          title: const Text('1)  Given 2 persons ratio and n years after 2 person  ratio ?'),onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer()));
        },
        ),
        ListTile(
          title: const Text('2)  Given 2 person ratio and sum and after n years ?'),onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer2()));
        },
        ),
        ListTile(
          title: const Text('3)  Given Difference of two persons and n years ago 2 person ratio ?'),onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer3()));
        },
        ),
        ListTile(
          title: const Text('4)  Given two persons ratio and product and ages after n years ?'),onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer4()));
        },
        ),
        ListTile(
          title: const Text('5)  Given 2 persons ratio and n years hence 2 person  ratio and n1 years ago age is  ?'),onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer5()));
        },
        ),
          ListTile(
            title: const Text('6)  Given 2 persons ratio and n years after 2 person  ratio and find the difference ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer6()));
          },
          ),
          ListTile(
            title: const Text('7)  Given Average of two persons age  and n years after ratios.find the present age ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer7()));
          },
          ),
          ListTile(
            title: const Text('8)  Given the person_1 age  n years ago is n times the  person_2 and n years hence and person_1 n times the person_2 ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer8()));
          },
          ),
          ListTile(
            title: const Text('9)  Given two persons ratio and other two persons ratio and three persons sum and find the persent age three persons ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer9()));
          },
          ),
          ListTile(
            title: const Text('10)  Given 2 persons  ages and 2 persons ratio  find the n yeras ago ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const AgesAnswer10()));
          },
          ),
      ],

      ),
    );
  }
}

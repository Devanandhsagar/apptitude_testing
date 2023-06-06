
import 'package:apptitude_test/ages_answer.dart';
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
          title: Text('1)  Given 2 persons ratio and n years after 2 person  ratio ?'),onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>agesanswer()));
        },
        ),
        ListTile(
          title: Text('2)  Given 2 person ratio and sum ?'),onTap: (){},
        ),
        ListTile(
          title: Text('3)  Given Difference of two persons and n years ago 2 person ratio ?'),onTap: (){},
        ),
        ListTile(
          title: Text('4)  Given two persons ratio and product ?'),onTap: (){},
        ),
        ListTile(
          title: Text('5)  Given two past ratios and two Futer ratios .Find the Present ages ?'),onTap: (){},
        ),
      ],

      ),
    );
  }
}

import 'package:apptitude_test/racesanswer1.dart';
import 'package:apptitude_test/racesanswer10.dart';
import 'package:apptitude_test/racesanswer2.dart';
import 'package:apptitude_test/racesanswer3.dart';
import 'package:apptitude_test/racesanswer4.dart';
import 'package:apptitude_test/racesanswer5.dart';
import 'package:apptitude_test/racesanswer6.dart';
import 'package:apptitude_test/racesanswer7.dart';
import 'package:apptitude_test/racesanswer8.dart';
import 'package:apptitude_test/racesanswer9.dart';
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
        centerTitle: true,title: const Text('Stocks and Shares'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: const Text('1)  Given distance and person_1,person_2cover in n sec , n sec ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer1()));
          },
          ),
          ListTile(
            title: const Text('2)  Given person_1 beats by person_2 in n meters and person_2 beats person_3 in n  meter ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer2()));
          },
          ),
          ListTile(
            title: const Text('3)  Given distance person_2 give start of n meter to person_1 and person_3 give start of n meter to person_3 ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer3()));
          },
          ),
          ListTile(
            title: const Text('4)  Given n meters race person_1 beats person_2 by n mater or n sec ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer4()));
          },
          ),
          ListTile(
            title: const Text('5)  Given n meter race ratio of two persons is n1 : n2 sec ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer5()));
          },
          ),
          ListTile(
            title: const Text('6)  Given n meter distance person_1 cover n sec and person_2 cover n sec ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer6()));
          },
          ),
          ListTile(
            title: const Text('7)  Given distance person_1 defeated person_2 by n sec  ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer7()));
          },
          ),
          ListTile(
            title: const Text('8)  Given distance person_1 race n km an hour person_1 and person_2 start n meters and still beats by n sec ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer8()));
          },
          ),
          ListTile(
            title: const Text('9)  Given n meter race the person_1 beats person_2 n meter  and person_2 beats person_3 by n meters ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer9()));
          },
          ),
          ListTile(
            title: const Text('10)  Given n meters race person_1 beats person_2 by n meters and person_3 by n meters and other n meter race ?'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const RacesAnswer10()));
          },
          ),
        ],

      ),
    );
  }
}
import 'package:flutter/material.dart';
class AgesAnswer9 extends StatefulWidget {
  // final TextEditingController controller;
  const AgesAnswer9({Key? key,}) : super(key: key);

  @override
  State<AgesAnswer9> createState() => _AgesAnswer9State();
}

class _AgesAnswer9State extends State<AgesAnswer9> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  var d = TextEditingController();
  var e= TextEditingController();
  bool show = false;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('9)  Given two persons ratio and other two persons ratio and three persons sum and find the present age three persons ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the person_1 ratio'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration:const InputDecoration(
              label: Text('Enter the person_2 ratio'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the person_1 ratio'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter the person_3 ratio'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: e,
            decoration: const InputDecoration(
              label: Text('Enter the  sum of three persons'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0,input3=0,input4=0,input5=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                input4=int.parse(d.text);
                input5=int.parse(e.text);
                result = "Person_1 and person_2 = $input1 : $input5  = 1 : ($input2/$input1)\n"
                    "person_1 and person_3 = $input3 : $input4 = 1 : ($input4/$input3)\n"
                    "x + ($input2/$input1) + ($input4/$input3) = $input5 \n"
                    "x = ${input5/(1+(input2/input1)+(input4/input3))} \n"
                    "person_1 age ${(input2/input1) * (input5/(1+(input2/input1)+(input4/input3)))}\n"
                    "person_2 age ${(input4/input3) * (input5/(1+(input2/input1)+(input4/input3)))}\n"
                    "person_3 age ${(input5/(1+(input2/input1)+(input4/input3)))}";

              });
            }, child: const Text('Show/Hide' , style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),) ,
          ),
          const SizedBox(height: 30,),
          Visibility(
            visible: show,
            child: Text('$result ',style: const TextStyle(fontWeight: FontWeight.bold),),
          ),


        ],
      ),
    );

  }
}

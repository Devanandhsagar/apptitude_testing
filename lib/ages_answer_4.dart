import 'dart:math';

import 'package:flutter/material.dart';
class AgesAnswer4 extends StatefulWidget {
  // final TextEditingController controller;
  const AgesAnswer4({Key? key,}) : super(key: key);

  @override
  State<AgesAnswer4> createState() => _AgesAnswer4State();
}

class _AgesAnswer4State extends State<AgesAnswer4> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  var d = TextEditingController();
  bool show = false;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('4) Given two persons ratio and product and ages after n years'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the present ratio person_1'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the  present ratio person_2'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the product'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter the after n years '),
            ),
          ),
          const SizedBox(height: 20,),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0,input3=0,input4=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                input4=int.parse(d.text);
                result = "person_1 age = $input1 * x\n"
                    "person_2 age = $input2 * x\n"
                    "person_1 * person_2 = $input3  =  ${input1*input2}*X**2 = $input3\n"
                    "value of x = ${sqrt(input3/(input1*input2))}\n"
                    "person_1 age after $input4 years  = ${(input1 * (sqrt(input3/(input1*input2))))+input4} \n"
                    "person_2 age after $input4 years = ${(input2 * (sqrt(input3/(input1*input2))))+input4}";
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

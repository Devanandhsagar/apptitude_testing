import 'package:flutter/material.dart';
class AgesAnswer6 extends StatefulWidget {
  // final TextEditingController controller;
  const AgesAnswer6({Key? key,}) : super(key: key);

  @override
  State<AgesAnswer6> createState() => _AgesAnswer6State();
}

class _AgesAnswer6State extends State<AgesAnswer6> {
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
        children:[ const SizedBox(height: 30,),const Text('6)  Given 2 persons ratio and n years after 2 person  ratio and find the difference ?'),
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
              label: Text('Enter the n Years after'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter the ratio years after person_1'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: e,
            decoration: const InputDecoration(
              label: Text('Enter the ratio years after person_2'),
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
                result = "lets equation =   $input5 ($input1 * x + $input3) = $input4($input2 * x + $input3)\n"
                    ">> ($input5 * $input1 * x) - ($input4 * $input2 * x) = ( $input4 * $input3 - $input3 * $input5 )\n"
                    ">> ${(input5 * input1) - (input4 * input2)} * x = ${(input4 * input3)-(input3 *input5)}\n"
                    "Value of x = ${(input5 * input1) - (input4 * input2)}/ ${(input4 * input3)-(input3 *input5)} \n"
                    "x = ${((input4 * input3)-(input3 *input5))/((input5 * input1) - (input4 * input2))} \n"
                    "person_1 age = $input1 * x = ${(input1*(((input4 * input3)-(input3 *input5))/((input5 * input1) - (input4 * input2))))}\n"
                    "person_2 age = $input2 * x = ${(input2*(((input4 * input3)-(input3 *input5))/((input5 * input1) - (input4 * input2))))}/n"
                    "persons difference = ${((input1*(((input4 * input3)-(input3 *input5))/((input5 * input1) - (input4 * input2)))) - (input2*(((input4 * input3)-(input3 *input5))/((input5 * input1) - (input4 * input2))))).abs() }";

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

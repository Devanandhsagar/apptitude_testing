import 'package:flutter/material.dart';
class AgesAnswer8 extends StatefulWidget {
  // final TextEditingController controller;
  const AgesAnswer8({Key? key,}) : super(key: key);

  @override
  State<AgesAnswer8> createState() => _AgesAnswer8State();
}

class _AgesAnswer8State extends State<AgesAnswer8> {
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
        children:[ const SizedBox(height: 30,),const Text('8)  Given the person_1 age  n years ago is n times the  person_2 and n years hence and person_1 n of times the person_2 ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter n years ago'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the  person_1 n times of person_2'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the n Years hence'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter person_1 equal no of times person_2 '
            ),
          ),
          ),
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
                result = "Equation =  ( $input2 * x + $input1 ) + $input3 = $input4(x + $input1  + $input3 )\n"
                    "$input2 * x - $input4 * x = $input4($input1+$input3) - $input1 - $input3 \n"
                    ">>${input2-input4}* x = ${(input4 *(input1+input3))- input1 -input3} \n"
                    "Value of x = ${((input4 *(input1+input3))- input1 -input3)/(input2-input4)}\n"
                    "Ratio $input2 * x = ${input2 * (((input4 *(input1+input3))- input1 -input3)/(input2-input4)).abs() }\n"
                    "Ratio  = ${input2 * (((input4 *(input1+input3))- input1 -input3)/(input2-input4)).abs() }";

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

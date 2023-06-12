import 'package:flutter/material.dart';
class AgesAnswer10 extends StatefulWidget {
  // final TextEditingController controller;
  const AgesAnswer10({Key? key,}) : super(key: key);

  @override
  State<AgesAnswer10> createState() => _AgesAnswer10State();
}

class _AgesAnswer10State extends State<AgesAnswer10> {
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
        children:[ const SizedBox(height: 30,),const Text('10)  Given 2 persons  ages and 2 persons ratio  find the n years ago ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the present age person_1'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the  present age person_2'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the ratio years after person_1'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter the ratio years after person_2'),
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
                result = "Equation =   $input3  (  $input2  -   x   ) =  $input4  ( x -  $input1 ) \n"
                    ">> $input3 * $input2   - $input3 * x = $input4 + $input1 - $input4 * x  \n"
                    ">>  $input4  * x - $input3 * x = ${input4*input1} - ${input2*input3} \n"
                    ">> Value x = ${((input4*input1)-(input2*input3))/(input3-input4)}\n"
                    "The ${(((input4*input1)-(input2*input3))/(input3-input4)).abs()} years age ratio is $input3 : $input4";

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

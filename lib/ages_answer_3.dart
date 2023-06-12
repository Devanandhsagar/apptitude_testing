import 'package:flutter/material.dart';
class AgesAnswer3 extends StatefulWidget {
  // final TextEditingController controller;
  const AgesAnswer3({Key? key,}) : super(key: key);

  @override
  State<AgesAnswer3> createState() => _AgesAnswer3State();
}

class _AgesAnswer3State extends State<AgesAnswer3> {
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
        children:[ const SizedBox(height: 30,),const Text('3)  Given Difference of two persons and n years ago 2 person ratio ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the difference of two persons'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the n years ago'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter  n years ago ratio of person_1'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter  n years ago ratio of person_2'),
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
                result = "Lets person_1 age = ($input3 * x + $input4) \n"
                    "person_2 age = ($input2 * x + $input4) \n"
                    "person_1 - person_2 = difference = ($input3 * x + $input4 - $input2 * x + $input4) = $input1 \n"
                    ">>  ${input3 -input2} * x = $input1 \n"
                    "Value of x = ${(input1/(input3 - input2))}\n"
                    " person_1 age = ${(input3)*(input1/(input3 - input2))}\n"
                    " person_2 age = ${(input4)*(input1/(input3 - input2))}\n";

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

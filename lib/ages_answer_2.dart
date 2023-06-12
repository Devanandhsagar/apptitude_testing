import 'package:flutter/material.dart';
class AgesAnswer2 extends StatefulWidget {
  // final TextEditingController controller;
  const AgesAnswer2({Key? key,}) : super(key: key);

  @override
  State<AgesAnswer2> createState() => _AgesAnswer2State();
}

class _AgesAnswer2State extends State<AgesAnswer2> {
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
        children:[ const SizedBox(height: 30,),const Text('2)  Given 2 person ratio and sum and after n years ?'),
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
              label: Text('Enter the sum'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter after n years'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2= 0,input3=0,input4=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                input4=int.parse(d.text);
                result = "Equation = person_1,s  age = $input3 * ($input1)/(${input1+input2}) =  ${(input3) * ((input1)/(input1+input2))} \n"
                    "person_2 age = (sum - person_1 age)=  ${(input3)-((input3) * ((input1)/(input1+input2)))} \n"
                    "Ratio of ages = (${(input3) * ((input1)/(input1+input2))}+$input4) / ${(input3)-((input3) * ((input1)/(input1+input2)))} \n"
                    "ratios = ${((input3) * ((input1)/(input1+input2)))+input4} / ${((input3)-((input3) * ((input1)/(input1+input2))))+input4}";
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

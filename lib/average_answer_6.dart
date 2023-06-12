import 'package:flutter/material.dart';
class AvgAnswer6 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer6({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer6> createState() => _AvgAnswer6State();
}

class _AvgAnswer6State extends State<AvgAnswer6> {
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
        children:[ const SizedBox(height: 30,),const Text('6)  Given average of n students is average and frist two students and average and last two students average ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter average n numbers'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter average first two numbers'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter average last two numbers'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter no of students'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0;
                int input2=0;
                int input3=0;
                int input4=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                input4=int.parse(d.text);
                result = "Middle number = (($input1 * $input4) - (input3 * 2 + input2 * 2))\n"
                    ">> ${input1 * input4} - ${(input3 * 2)+(input2 * 2)}\n"
                    "Middle number = ${(input1 * input4)-((input3 * 2)+(input2 * 2))}";

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

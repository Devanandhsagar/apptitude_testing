import 'package:flutter/material.dart';
class AvgAnswer9 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer9({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer9> createState() => _AvgAnswer9State();
}

class _AvgAnswer9State extends State<AvgAnswer9> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  bool show = false;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('9)  Given n teachers and new teacher age and n years reduced age find old teacher age ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter no of teachers '),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter new teacher age'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter n years reduced age'),
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
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                result = "Age of retried teacher  = $input2 + ($input3 * $input1 )\n"
                    ">> $input2 + ${input3 *input1}\n"
                    ">> ${input2 + (input3 * input1 )}";

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

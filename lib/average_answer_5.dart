import 'package:flutter/material.dart';
class AvgAnswer5 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer5({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer5> createState() => _AvgAnswer5State();
}

class _AvgAnswer5State extends State<AvgAnswer5> {
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
        children:[ const SizedBox(height: 30,),const Text('5)  Given average of subject marks n students and average  and misread of n students with marks   ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter no of students'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter average of students'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter misread value'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter correct value'),
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
                result = "Correct sum = ($input2 * $input1 + $input4 - $input3 )\n"
                    ">> ${input2 * input1+input4-input3}\n"
                    ">>correct average = (correct sum/ no of students) = ${input2 * input1+input4-input3}/$input1 \n"
                    "average = ${((input2 * input1)+input4-input3)/(input1)}";

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

import 'package:flutter/material.dart';
class AvgAnswer7 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer7({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer7> createState() => _AvgAnswer7State();
}

class _AvgAnswer7State extends State<AvgAnswer7> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  bool show = false;
  double num3=0;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('7)  Given n students and average and one students is add and average increase by n '),
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
              label: Text('Enter average students'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter average raises '),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0;
                int input2=0;
                int convertgrams=1000;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                num3=((int.parse(c.text))/(convertgrams));
                result = "Average weight = $input2 + $num3 * $input1 +1 - $input2 * $input1 \n"
                    "average weight = ${(input2 + num3)* (input1 + 1)} - ${input2 * input1}\n"
                    ">> ${((input2 + num3)* (input1 + 1))-(input2 * input1)}";

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

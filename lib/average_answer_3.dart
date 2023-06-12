import 'package:flutter/material.dart';
class AvgAnswer3 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer3({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer3> createState() => _AvgAnswer3State();
}

class _AvgAnswer3State extends State<AvgAnswer3> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('3)  Given n numbers and multiples of n find the average ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter no of persons'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter multiple of n'),
            ),
          ),

          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0;
                int input2=0;
                int average=0;
                var num4="";
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                for (int i=1; i<=input2; i++ ){
                  average+=i;
                  num4+="${(i) as String} + ";
                }
                print(average);
                result = "average persons = $num4 \n"
                    ">> $average \n"
                    "average = ($input2 * ($average))/($input1) \n"
                    "average = ${(input2 * average)/input1}";

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

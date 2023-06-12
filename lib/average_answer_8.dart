import 'package:flutter/material.dart';
class AvgAnswer8 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer8({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer8> createState() => _AvgAnswer8State();
}

class _AvgAnswer8State extends State<AvgAnswer8> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('8)  Given n numbers and n mean find the sum all numbers  ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter n no of numbers in mean'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter mean'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0;
                int input2=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                result = "Sum of numbers = $input1 * $input2 \n"
                    ">> ${input1 *input2}";

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

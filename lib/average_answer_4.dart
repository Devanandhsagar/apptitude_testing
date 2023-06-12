import 'package:flutter/material.dart';
class AvgAnswer4 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer4({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer4> createState() => _AvgAnswer4State();
}

class _AvgAnswer4State extends State<AvgAnswer4> {
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
        children:[ const SizedBox(height: 30,),const Text('4)  Given n boys average and n remaing boys average find the all boys average ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter n boys'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter average'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter reamining boys'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter remaining average'),
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
                result = "Requried average = ($input2 * $input1 + $input3 * $input4)/($input1+$input3) \n"
                    ">> ${input2 * input1} + ${input3 *input4} / ${input1 +input3} \n"
                    ">> ${((input2 * input1)+(input3 * input4))/(input1 +input3)}";

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

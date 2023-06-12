import 'package:flutter/material.dart';
class AvgAnswer10 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer10({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer10> createState() => _AvgAnswer10State();
}

class _AvgAnswer10State extends State<AvgAnswer10> {
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
        children:[ const SizedBox(height: 30,),const Text('10)  Given n students and average and passed average and falied average ?'),
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
              label: Text('Enter passed students'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter falied students'),
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
                result = "passed students average = $input2 - $input4  =  ${(input2 -input4).abs()}\n"
                    "Failed students  average = $input3 - $input2 = ${(input3-input2).abs()} \n"
                    "no of students = failed /(passed + failed) * total no of students \n "
                    "no of students = ${(input3-input2).abs()}/(${(input3-input2).abs()}+${(input2 -input4).abs()}) * $input1 \n"
                    ">> ${(((input3-input2).abs())/(((input3-input2).abs())+((input2 -input4).abs())))*input1}";
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

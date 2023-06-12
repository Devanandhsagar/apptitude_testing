import 'package:flutter/material.dart';
class AgesAnswer7 extends StatefulWidget {
  // final TextEditingController controller;
  const AgesAnswer7({Key? key,}) : super(key: key);

  @override
  State<AgesAnswer7> createState() => _AgesAnswer7State();
}

class _AgesAnswer7State extends State<AgesAnswer7> {
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
        children:[ const SizedBox(height: 30,),const Text('7)  Given Average of two persons age  and n years after ratios.find the present age ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the Average of two persons'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the n Years after'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the ratio years after person_1'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter the ratio years after person_2'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0,input3=0,input4=0,totalAverage=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                input4=int.parse(d.text);
                totalAverage=input1*2;
                result = "Equation = $input4 ( x + $input2 ) = $input3 ($totalAverage - x + $input2)\n"
                    ">> $input4 * x + $input4 * $input2 = $input3 * (${totalAverage+input2}  - $input3 * x \n"
                    ">> ${input4 - input3} * x = ${(input4*input2)- (input3*(totalAverage+input2))} \n"
                    "value of x = ${((input4*input2)- (input3*(totalAverage+input2)))/(input4 - input3)}\n"
                    "present age of person_1 = ${input3*((input4*input2)- (input3*(totalAverage+input2)))/(input4 - input3)}\n"
                    "present age of person_2 = ${input4*((input4*input2)- (input3*(totalAverage+input2)))/(input4 - input3)}";


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

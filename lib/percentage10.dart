import 'package:flutter/material.dart';
class PercentageAnswer10 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer10({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer10> createState() => _PercentageAnswer10State();
}

class _PercentageAnswer10State extends State<PercentageAnswer10> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('10)  Given  n vacancies and n % rejected in interview ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter cost price'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter discount'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                result = "Total candidates are (100 - $input2) = ${100-input2}%\n"
                    "${100-input2} % of x = $input1 \n"
                    "${100-input2}/100 * x = $input1\n"
                    "x = ($input1 * 100 )/ ${100-input2} \n"
                    "x = ${(input1 * 100) / (100 - input2)}";
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

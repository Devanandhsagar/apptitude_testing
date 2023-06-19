import 'package:flutter/material.dart';
class PercentageAnswer9 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer9({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer9> createState() => _PercentageAnswer9State();
}

class _PercentageAnswer9State extends State<PercentageAnswer9> {
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
        children:[ const SizedBox(height: 30,),const Text('9)  Given n % and two values cost is n1,n2 ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter n percentage'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter value 1'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the value 2'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0,input3=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                result = "Rebate on one ball = $input1 % of $input3\n"
                    ">> $input1/100 * $input3 = ${(input1/100)*input3}\n"
                    "Required number of balls = $input2/${(input1/100)*input3} \n"
                    ">> ${input2/((input1/100)*input3)}";
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

import 'package:flutter/material.dart';
class PercentageAnswer7 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer7({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer7> createState() => _PercentageAnswer7State();
}

class _PercentageAnswer7State extends State<PercentageAnswer7> {
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
        children:[ const SizedBox(height: 30,),const Text('7)  Given n % of number and n % .find the number ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the percentage'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the number'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the percentage'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0;
                double input2=0;
                int input3=0;
                input1=int.parse(a.text);
                input2=double.parse(b.text);
                input3=int.parse(c.text);
                result = "Let the number be x \n"
                    "Then $input1 of x = $input2\n"
                    ">>$input1 * x /100 = $input2\n"
                    "x = $input2 * 100 /$input1 = ${(input2*100)/input1}\n"
                    "$input3 % of ${(input2*100)/input1} = $input3/100 * ${(input2*100)/input1} \n"
                    ">>${(input3/100)*((input2*100)/input1)}";
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

import 'package:flutter/material.dart';
class PercentageAnswer8 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer8({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer8> createState() => _PercentageAnswer8State();
}

class _PercentageAnswer8State extends State<PercentageAnswer8> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('8)  Given company pay rent and discount .find the annual ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter pay rent monthly'),

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
                result = "Total annual rent = ($input1 * 12 ) = ${input1 * 12}\n"
                    "Discount = $input2 % of ${input1*12}\n"
                    ">> ($input2/100) * ${input1 * 12} = ${(input2/100)*(input1*12)} \n"
                    "Annual rent paid after discount = ( ${input1 * 12} - ${(input2/100)*(input1*12)} \n"
                    ">> ${(input1 * 12)- ((input2/100)*(input1*12))}";
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

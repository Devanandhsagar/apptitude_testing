import 'package:flutter/material.dart';
class PercentageAnswer6 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer6({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer6> createState() => _PercentageAnswer6State();
}

class _PercentageAnswer6State extends State<PercentageAnswer6> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('6)  Given n litres and solution ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the litres'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the solution'),
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
                result = "Quantity of pure acid = $input2 of $input1 litres\n"
                    ">> ($input2/100)* $input1 = ${(input2/100)*input1} litres";
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

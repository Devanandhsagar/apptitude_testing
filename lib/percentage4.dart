import 'package:flutter/material.dart';
class PercentageAnswer4 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer4({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer4> createState() => _PercentageAnswer4State();
}

class _PercentageAnswer4State extends State<PercentageAnswer4> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('4)  Given n % of value and another n % of value ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter n% and value with space separator'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter n% and value with space separator'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                var input1=[];
                var input2=[];
                input1=(a.text).split(" ");
                input2=(b.text).split(" ");
                result = "${int.parse(input1[0])}/100 * (${int.parse(input1[1])} = ${(int.parse(input1[0])/100)*int.parse(input1[1])}\n"
                    "${int.parse(input2[0])}/100 * (${int.parse(input2[1])} = ${(int.parse(input2[0])/100)*int.parse(input2[1])}\n"
                    "Add = ${((int.parse(input1[0])/100)*int.parse(input1[1]))+((int.parse(input2[0])/100)*int.parse(input2[1]))}";
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

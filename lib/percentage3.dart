import 'package:flutter/material.dart';
class PercentageAnswer3 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer3({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer3> createState() => _PercentageAnswer3State();
}

class _PercentageAnswer3State extends State<PercentageAnswer3> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('3)  Given value and commission rate ? '),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter commission rate'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter value'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                var input1=[];
                int input2=0;
                input1=(a.text).split(" ");
                input2=int.parse(b.text);
                result = "(${int.parse(input1[0])}/${int.parse(input1[1])} * 1/100 * $input2 \n"
                    ">>${(int.parse(input1[0])/int.parse(input1[1])) * (1/100) * (input2)}";
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

import 'package:flutter/material.dart';
class PercentageAnswer5 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer5({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer5> createState() => _PercentageAnswer5State();
}

class _PercentageAnswer5State extends State<PercentageAnswer5> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('5)  Given person_1 kg and person_2 kg ?'),
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
                result = "Total weight ($input1 + $input2 ) = ${input1+input2} kg\n"
                    "Required percentage = ($input1/${input1+input2}) * 100 = ${(input1/(input1+input2))*100} \n"
                    ">>${(input1/(input1+input2))*100} %";
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

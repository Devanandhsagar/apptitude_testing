import 'package:flutter/material.dart';
class PercentageAnswer1 extends StatefulWidget {
  // final TextEditingController controller;
  const PercentageAnswer1({Key? key,}) : super(key: key);

  @override
  State<PercentageAnswer1> createState() => _PercentageAnswer1State();
}

class _PercentageAnswer1State extends State<PercentageAnswer1> {
  var a = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('1)  Given fraction expressed in percentage ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter fraction number with space separator'),

            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                var input1=[];
                input1=(a.text).split(" ");
                result = "( ${int.parse(input1[0])}/ ${int.parse(input1[1])} * 100 )\n"
                    "${int.parse(input1[0])/(int.parse(input1[1]))} %";
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

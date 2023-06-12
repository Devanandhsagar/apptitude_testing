import 'package:flutter/material.dart';
class AvgAnswer1 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer1({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer1> createState() => _AvgAnswer1State();
}

class _AvgAnswer1State extends State<AvgAnswer1> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('1)  Given weights of the a all persons and no of persons ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter weights with space sperator '),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter no of persons '),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input2=0;
                int average=0;
                var averageString='';
                var list=[];
                list=(a.text).split(" ");
                for (var i in list){
                  average+=int.parse(i);
                  averageString+=i+" + ";
                }
                input2=int.parse(b.text);
                result = "Average body weights = $averageString / $input2 \n"
                    ">>average weight = ${average/input2} kg's";

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

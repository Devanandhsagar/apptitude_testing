import 'package:flutter/material.dart';
class AvgAnswer2 extends StatefulWidget {
  // final TextEditingController controller;
  const AvgAnswer2({Key? key,}) : super(key: key);

  @override
  State<AvgAnswer2> createState() => _AvgAnswer2State();
}
class _AvgAnswer2State extends State<AvgAnswer2> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),
          const Text('2)  Given incomes and no of persons and find arthmetic mean ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter income of people with space'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter no of persons'),
            ),
          ),

          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input2=0;
                int totalincome=0;
                var totalincomestring='';
                var list =[];
                list=(a.text).split(" ");
                for (var i in list){
                  totalincome+=int.parse(i);
                  totalincomestring+=i+" + ";
                }
                input2=int.parse(b.text);
                result = "Arthmetic mean = (income of people )/(no of people) = $totalincomestring / $input2 \n"
                    ">>mean = ${totalincome/input2}  income";

              });
            }, child: const Text('Show/Hide' , style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),) ,
          ),
          const SizedBox(height: 30,),
          Visibility(
            visible: show,
            child:
            Text('$result ',style: const TextStyle(fontWeight: FontWeight.bold),),
          ),


        ],
      ),
    );

  }
}

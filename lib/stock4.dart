import 'package:flutter/material.dart';
class StockAnswer4 extends StatefulWidget {
  // final TextEditingController controller;
  const StockAnswer4({Key? key,}) : super(key: key);

  @override
  State<StockAnswer4> createState() => _StockAnswer4State();
}

class _StockAnswer4State extends State<StockAnswer4> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('4)  Given invest percentage and price ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter invest'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter percentage'),
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
                result = "By investing $input2 income = $input1 \n"
                    "By investing 100 = ($input1/$input2) * 100 \n"
                    ">> ${(input1/input2)*100}";

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

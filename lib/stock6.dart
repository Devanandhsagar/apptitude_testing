import 'package:flutter/material.dart';
class StockAnswer6 extends StatefulWidget {
  // final TextEditingController controller;
  const StockAnswer6({Key? key,}) : super(key: key);

  @override
  State<StockAnswer6> createState() => _StockAnswer6State();
}

class _StockAnswer6State extends State<StockAnswer6> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text(' 6)  Given n percentage stocks yields n percentage ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter percentage stock'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter percentage yields'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0,input3=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                result = "For an income of $input2 investment = 100\n"
                    "for an income of $input1 investment = (100/$input2)*$input1 = ${(100/input2)*input1}\n"
                    "market value og 100 stocks = ${(100/input2)*input1}";

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

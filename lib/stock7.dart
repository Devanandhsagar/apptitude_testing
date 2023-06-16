import 'package:flutter/material.dart';
class StockAnswer7 extends StatefulWidget {
  // final TextEditingController controller;
  const StockAnswer7({Key? key,}) : super(key: key);

  @override
  State<StockAnswer7> createState() => _StockAnswer7State();
}

class _StockAnswer7State extends State<StockAnswer7> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('7)   Given invested price and percentage stock and obtain income ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter invested price'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter stock percentage'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter obtain income'),
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
                input3=int.parse(c.text);
                result = "To earn $input3 invested = $input1 \n"
                    "To earn $input2 = invested = ($input1/$input3) * $input2 \n"
                    ">> ${(input1/input3)*input2}";

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

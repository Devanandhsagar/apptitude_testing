import 'package:flutter/material.dart';
class StockAnswer3 extends StatefulWidget {
  // final TextEditingController controller;
  const StockAnswer3({Key? key,}) : super(key: key);

  @override
  State<StockAnswer3> createState() => _StockAnswer3State();
}

class _StockAnswer3State extends State<StockAnswer3> {
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
        children:[ const SizedBox(height: 30,),const Text('3)  Given market value each and purchased price and brokerage ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter market value'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter price'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter brokerage'),
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
                result = "cost price of each share = ($input1 + $input3 * $input1) \n"
                    "each share = ${input1+(input3 * input1)}\n"
                    "number of shares = $input2/${input1+(input3 * input1)}\n"
                    "number of shares = ${input2/(input1+(input3 * input1))}";

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

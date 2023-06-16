import 'package:flutter/material.dart';
class StockAnswer10 extends StatefulWidget {
  // final TextEditingController controller;
  const StockAnswer10({Key? key,}) : super(key: key);

  @override
  State<StockAnswer10> createState() => _StockAnswer10State();
}

class _StockAnswer10State extends State<StockAnswer10> {
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
        children:[ const SizedBox(height: 30,),const Text('10)  Given buys share and dividend % and % on investment ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter buys shares'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter dividend percentage'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter investment percentage'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0;
                double input3=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=double.parse(c.text);
                result = "Dividend on share = ($input2/100)*$input1= ${(input2/100)*input1}\n"
                    "$input3 is an income investment of 100\n"
                    "${(input2/100)*input1} income an investment (100 * (1/$input3) * ${(input2/100)*input1})\n"
                    "cost of share = ${100 * (1/input3) * ((input2/100)*input1)}";

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

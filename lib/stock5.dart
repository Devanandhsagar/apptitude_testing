import 'package:flutter/material.dart';
class StockAnswer5 extends StatefulWidget {
  // final TextEditingController controller;
  const StockAnswer5({Key? key,}) : super(key: key);

  @override
  State<StockAnswer5> createState() => _StockAnswer5State();
}

class _StockAnswer5State extends State<StockAnswer5> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  var d = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('5)  Given invested and share , quoted is rupees and dividend ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter invested'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter shares'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter quoted'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter dividend'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0,input4=0;
                double input3=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=double.parse(c.text);
                input4=int.parse(d.text);
                result = "number of shares = ($input1/$input3) = ${input1/input3}\n"
                    "Face value  = (${input1/input3} * $input2) = ${(input1/input3)*input2}\n"
                    "Annual income  = ($input4/100 * ${(input1/input3)*input2} = ${(input4/100)*((input1/input3)*input2  )}";

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

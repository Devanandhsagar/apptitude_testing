import 'package:flutter/material.dart';
class StockAnswer1 extends StatefulWidget {
  // final TextEditingController controller;
  const StockAnswer1({Key? key,}) : super(key: key);

  @override
  State<StockAnswer1> createState() => _StockAnswer1State();
}

class _StockAnswer1State extends State<StockAnswer1> {
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
        children:[ const SizedBox(height: 30,),const Text('1)  Given cost price and discount and brokerage ?'),
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
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter brokerage with space  of fraction number'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                var input3=[];
                int input1=0,input2=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=(c.text).split(" ");
                result = " cost price = ($input1 - $input2 + ${input3[0]} / ${input3[1]} )\n"
                    "cost price = ${input1 - input2 + (int.parse(input3[0] )/int.parse(input3[1] ))}";

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

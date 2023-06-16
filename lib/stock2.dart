import 'package:flutter/material.dart';
class StockAnswer2 extends StatefulWidget {
  // final TextEditingController controller;
  const StockAnswer2({Key? key,}) : super(key: key);

  @override
  State<StockAnswer2> createState() => _StockAnswer2State();
}

class _StockAnswer2State extends State<StockAnswer2> {
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
        children:[ const SizedBox(height: 30,),const Text('2)  Given selling percentage and price , brokerage ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter selling percentage'),

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
              label: Text('Enter brokerage with space of fraction'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                var input3=[];
                double input2=0;
                input2=double.parse(b.text);
                input3=(c.text).split(" ");
                result = "cash realised = ($input2 - ${input3[0]}/${input3[1]})\n"
                    ">>${input2 - (int.parse(input3[0])/int.parse(input3[1]))}";

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

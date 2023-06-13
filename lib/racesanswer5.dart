import 'package:flutter/material.dart';
class RacesAnswer5 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer5({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer5> createState() => _RacesAnswer5State();
}

class _RacesAnswer5State extends State<RacesAnswer5> {
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
        children:[ const SizedBox(height: 30,),const Text('5)  Given n meter race ratio of two persons is n1 : n2 sec and n meters ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter distance of race'),
            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter ratio person_1'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter ratio of person_2'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter n meters'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0,input3=0,input4=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                input4=int.parse(d.text);
                result = "Equation =   $input3  (  $input1  * x -   $input2 )   =  $input3  ( x -  $input2 ) \n"
                    ">> $input3 * $input1 * x  - $input3 * $input2 = $input3 * x - $input3 * $input2  \n"
                    ">>  ${input3*input1} * x - $input3 * x = ${input3*input2} - ${input3*input2} \n"
                    ">> ${(input3*input1)-input3} * x = ${(input3*input2)-(input3*input2)} \n"
                    ">> Value x = ${((input3*input2)-(input3*input2))/((input3*input1)-input3)}";

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

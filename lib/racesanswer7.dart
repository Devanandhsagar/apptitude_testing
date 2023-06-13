import 'package:flutter/material.dart';
class RacesAnswer7 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer7({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer7> createState() => _RacesAnswer7State();
}

class _RacesAnswer7State extends State<RacesAnswer7> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  var d = TextEditingController();
  var e= TextEditingController();
  bool show = false;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('7)  Given distance person_1 defeated person_2 by n sec  ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the present ratio person_1'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the  present ratio person_2'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the n Years after'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter the ratio years after person_1'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: e,
            decoration: const InputDecoration(
              label: Text('Enter the ratio years after person_2'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input3=0,input5=0;
                input1=int.parse(a.text);
                input3=int.parse(c.text);
                input5=int.parse(e.text);
                result = "Equation =   $input5  (  $input1  * x -   $input3 )   =  $input5  ( x -  $input3 ) \n"
                    ">> $input5 * $input1 * x  - $input5 * $input3 = $input5 * x - $input5 * $input3  \n"
                    ">>  ${input5*input1} * x - $input5 * x = ${input5*input3} - ${input5*input3} \n"
                    ">> ${(input5*input1)-input5} * x = ${(input5*input3)-(input5*input3)} \n"
                    ">> Value x = ${((input5*input3)-(input5*input3))/((input5*input1)-input5)}";

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

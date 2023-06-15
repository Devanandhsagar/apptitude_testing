import 'package:flutter/material.dart';
class RacesAnswer6 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer6({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer6> createState() => _RacesAnswer6State();
}

class _RacesAnswer6State extends State<RacesAnswer6> {
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
        children:[ const SizedBox(height: 30,),const Text('6)  Given n meter distance person_1 cover n sec and person_2 cover n sec ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter distance in meters'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the  person_1 covers in seconds'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the  person_2 covers in seconds'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
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
                result = "Distance covered by person_2 in $input3 = $input1 \n"
                    "Distance covered by in $input2 = ($input1/$input3)*$input2 = ${(input1/input3)*input2}\n"
                    "person_2 was distance ($input1 - ${(input1/input3)*input2} = ${input1 - ((input1/input3)*input2)}";

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

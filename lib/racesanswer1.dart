import 'package:flutter/material.dart';
class RacesAnswer1 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer1({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer1> createState() => _RacesAnswer1State();
}

class _RacesAnswer1State extends State<RacesAnswer1> {
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
        children:[ const SizedBox(height: 30,),const Text('1)  Given distance and person_1,person_2cover in n sec , n sec ??'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter distance of race in meters'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter person_1 cover in sec'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter person_2 cover in n sec'),
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
                result = "Clearly person_1 beats person_2 = $input3 - $input2 = ${(input3-input2).abs()}  sec\n"
                    "Distance covered by  ${(input3-input2).abs()} sec = ($input1/$input3) * ${(input3-input2).abs()} \n"
                    "person_1 beats person_2 in ${(input1/input3)*((input3-input2).abs())} meters ";

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

import 'package:flutter/material.dart';
class RacesAnswer4 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer4({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer4> createState() => _RacesAnswer4State();
}

class _RacesAnswer4State extends State<RacesAnswer4> {
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
        children:[ const SizedBox(height: 30,),const Text('4)  Given n meters race person_1 beats person_2 by n mater or n sec ?'),
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
              label: Text('Enter person_1 beats by person_2 in meters'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter person_1 beats person_2 in secs'),
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
                result = "person_2 covers $input2 m in $input3 seconds \n"
                    "person_2 covers $input1 in = $input3/$input2 * $input1\n"
                    ">>${(input3/input2)*input1}\n"
                    "Time taken by person_1 = (${(input3/input2)*input1} - $input3) = ${((input3/input2)*input1)-input3}";
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

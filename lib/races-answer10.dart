import 'package:flutter/material.dart';
class RacesAnswer10 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer10({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer10> createState() => _RacesAnswer10State();
}

class _RacesAnswer10State extends State<RacesAnswer10> {
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
        children:[ const SizedBox(height: 30,),const Text('10)  Given n meters race person_1 beats person_2 by n meters and person_3 by n meters and other n meter race ?'),
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
              label: Text('Enter the person_1 beats person_2'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the person_3'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter the another distance'),
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
                result = "person_1 : person_2 = $input1 : ${input1-input2} \n"
                    "person_1 : person_3 = $input1 : ${input1-input3}\n"
                    "person_3/person_2 = person_3/person_1 * person_1/person_2 = ${input1-input2}/$input1 * $input1 /${input1-input3} \n"
                    ">>${input1-input3} / ${(input1 - input3)/(((input1-input2)/input1) * (input1/(input1-input3)))}\n"
                    "${1/((input1-input3)- ((input1 - input3)/(((input1-input2)/input1) * (input1/(input1-input3)))))} * $input4 \n"
                    "${((1/((input1-input3)- ((input1 - input3)/(((input1-input2)/input1) * (input1/(input1-input3)))))) * input4).abs()}  m";
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

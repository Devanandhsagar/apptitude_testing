import 'package:flutter/material.dart';
class RacesAnswer9 extends StatefulWidget {
  const RacesAnswer9({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer9> createState() => _RacesAnswer9State();
}
class _RacesAnswer9State extends State<RacesAnswer9> {
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
        children:[ const SizedBox(height: 30,),const Text('9)  Given n meter race the person_1 beats person_2 n meter  and person_2 beats person_3 by n meters ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the distance of race'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the  person_1 beats person_2'),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the person_2 beats person_3'),
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
                result = "person_1 : person_2 = $input1 : ${input1-input2} \n"
                    "person_2 : person_3 = $input1 : ${input1-input3}\n"
                    "person_1/person_3 = person_1/person_2 * person_2/person_3 = $input1 / ${input1-input2} * $input1 /${input1-input3} \n"
                    ">>$input1 : ${input1/((input1/(input1-input2))*(input1/(input1-input3)))} \n"
                    "person_1 beats person_2 = $input1 - ${input1/((input1/(input1-input2))*(input1/(input1-input3)))} = ${input1-(input1/((input1/(input1-input2))*(input1/(input1-input3))))} meters ";

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

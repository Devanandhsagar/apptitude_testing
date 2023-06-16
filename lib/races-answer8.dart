import 'package:flutter/material.dart';
class RacesAnswer8 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer8({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer8> createState() => _RacesAnswer8State();
}

class _RacesAnswer8State extends State<RacesAnswer8> {
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
        children:[ const SizedBox(height: 30,),const Text('8)  Given distance person_1 race n km an hour person_1 and person_2 start n meters and still beats by n sec ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the distance'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter the  person_1 km'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the start person_1 and person_2 in meters '),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: d,
            decoration: const InputDecoration(
              label: Text('Enter the beats by in seconds'),
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
                result = "person_1 speed = $input2 km/hr = ($input2 * 5/18 ) = ${input2 *(5/18)} \n"
                    "person_1 cover $input1 = ($input1 * ${input2 *(5/18)} = ${input1 * (1/(input2 *(5/18)))} \n"
                    "person_2 cover $input1 - $input3 = (${input1 * (1/(input2 *(5/18)))} + $input4) = ${(input1 * (1/(input2 *(5/18)))) + input4} secs";
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
